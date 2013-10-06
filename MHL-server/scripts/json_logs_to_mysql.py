import argparse
import json
import re

# Constants
JSON_LINE_START = '{"'
DELIMITER = ','
DATE_FIELD = 'dateOfService'
INSERT_STATEMENT = 'INSERT INTO {0}.{1} {2} VALUES {3};'
UPDATE_STATEMENT = 'UPDATE {0}.{1} SET {2} WHERE {3};'
CONVERT_TZ = 'CONVERT_TZ({0}, "+00:00", "+7:00")'
FROM_UNIXTIME = 'FROM_UNIXTIME({0})'
ASSIGNMENT_OPERATOR = ' = '
EQUIVALENCE_OPERATOR = ' = '
INTERSECTION_OPERATOR = ' AND '
WHERE_CLAUSE_FIELDS = ['clinicianID', DATE_FIELD]

# Map of Grails field names to MySQL field names, only needed where camel case to underscore conversion would fail
KEY_MAPPING = {'clinicianID': 'clinicianid'}

# Some versions of the form are obsolete, and contain obsolete fields, these fields identify entries for those forms
OBSOLETE_FIELDS = ['counseling']

# Define parser for the program arguments
parser = argparse.ArgumentParser(description='Read the MHL server logs, pull out the JSON for PatientEncounterForms created by a call to upload(), and export a MySQL script that will load those PatientEncounterForms into a MySQL database.')
parser.add_argument('--log_file', help='name of the log file to read in')
parser.add_argument('--database_name', help='name of MySQL database used in the exported script', default='mentalhealthliberia')
parser.add_argument('--table_name', help='name of the MySQL table that contains the PatientEncounterForms', default='patient_encounter_form')
parser.add_argument('--export_file', help='name of the exported MySQL script file', default='patient_encounter_forms.sql')
parser.add_argument('--update', help='use MySQL UPDATE statements to enter data rather than INSERT statements', action='store_true', default=False)
parser.add_argument('--only_bools', help='only extract and update boolean values', action='store_true',  default=False)
parser.add_argument('--append', help='specifies that the program should append to the exported file rather than overwriting it', action='store_true', default=False)

# Parse the program arguments
args = parser.parse_args()

# String helper functions
def parenthize_string(s):
    return '(' + s + ')'

# Functions for converting Unicode keys of JSON parser to MySQL friendly values
def convert_key(name):
    if name in KEY_MAPPING.keys():
        return KEY_MAPPING.get(name)
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).lower()

def convert_keys(aList):
    result = []
    for k in aList:
        if k == 'class':
            continue
        result.append(convert_key(k.encode('ascii')))
    return parenthize_string(DELIMITER.join(result))

# Convert a boolean to MySQL BIT fields
def convert_boolean(v):
    if v:
        return '1'
    return '0'

# Convert to MySQL friendly values for insertion into MySQL Statement
def convert_value(v):
    if isinstance(v, bool):
        return convert_boolean(v)
    elif isinstance(v, int) or isinstance(v, float):
        return str(v)
    elif v is None:
        return None
    return '"' + str(v) + '"'

def convert_values(aList):
    result = []
    for v in aList:
        if v == 'mentalhealthliberia.PatientEncounterForm':
            continue
        result.append(convert_value(v))
    return parenthize_string(DELIMITER.join(result))

# Open the log file
f = open(args.log_file)

# Read each line of the log file, pull out lines representing a PatientEncounterForm in JSON format, and store these all in a list
json_strings = []
for line in f:
    if line.startswith(JSON_LINE_START):
#        print line
        json_strings.append(line)

# Parse each JSON string into a map of key/value pairs corresponding to fields in the MySQL PatientEncounterForm table
json_maps = []
for item in json_strings:
    try:
        dict = json.loads(item)
    except:
        print item
#    skip = False
#    for item in dict.keys():
#        if item in OBSOLETE_FIELDS:
#            skip = True
#    if skip:
#        continue
    json_maps.append(dict)

# Tranform the key/value pairs into MySQL INSERT statements
def create_insert_statement(item):
    keys = convert_keys(list(item.viewkeys()))
    values = convert_values(list(item.viewvalues()))
    statement = INSERT_STATEMENT.format(args.database_name, args.table_name, keys, values)
    return statement

def isValidWhereClauseField(key, value):
    return value is not None and key not in WHERE_CLAUSE_FIELDS

def passesBoolOnlyCheck(v):
    return (args.only_bools and isinstance(v, bool)) or not args.only_bools

# Create SET clause for UPDATE statements
def create_update_values(item):
    result = []
    for k in item.keys():
        key = convert_key(k)
        value = convert_value(item.get(k))
        if isValidWhereClauseField(key, value) and passesBoolOnlyCheck(item.get(k)):
            result.append(key + ASSIGNMENT_OPERATOR + value)
    return DELIMITER.join(result)

# Create WHERE clause fields for UPDATE statements
def create_where_clause(item):
    result = []
    for k in WHERE_CLAUSE_FIELDS:
        key = convert_key(k)
        value = convert_value(item.get(k))
        if value is not None:
            if k is DATE_FIELD:
                int_value = int(item.get(k))
                value = CONVERT_TZ.format(FROM_UNIXTIME.format(int_value / 1000))
            clause = key + EQUIVALENCE_OPERATOR + value
            if clause is not None:
                result.append(clause)
    return INTERSECTION_OPERATOR.join(result)

# Tranform the key/value pairs into MySQL UPDATE statements
def create_update_statement(item):
    update_values = create_update_values(item)
    where_clause_fields = create_where_clause(item)
    statement = UPDATE_STATEMENT.format(args.database_name, args.table_name, update_values, where_clause_fields)
    return statement

def create_statement(item):
    if args.update:
        return create_update_statement(item)
    return create_insert_statement(item)

sql_statements = []
for item in json_maps:
    statement = create_statement(item)
    # Ignore duplicate statements
    if not statement in sql_statements:
        sql_statements.append(statement)

# Write the MySQL statements to a file
mode = 'w'
if args.append:
    mode = 'a'
out_f = open(args.export_file, mode)
for statement in sql_statements:
    out_f.write(statement + '\n')
