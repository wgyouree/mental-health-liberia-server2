# This is a dirty little script that converts a CSV file that is TAB delimited to JSON.
# The JSON output can be fed into the json_logs_to_mysql.py script to turn them into
# SQL INSERT (or UPDATE) statements to recover data.
#
# Note that this script is *not perfect* and some entries may not get converted properly.
# If that happens the string will be sent to stdout when running the json_logs_to_mysql.py
# script and you can attempt to fix them manually and run them through the script again.

from __future__ import print_function

import ast
import csv
import sys
import json

def convert(filename):
	csv_filename = filename[0]
	print(("Opening CSV file: ",csv_filename))
	f=open(csv_filename, 'rt')
	json_filename = csv_filename.split(".")[0]+".json"
	print(("Saving JSON to file: ", json_filename))
        csv_reader = csv.DictReader(f, delimiter='\t')
	encoded_json = json.dumps([r for r in csv_reader])
	json_object = json.loads(encoded_json)
	jsonf = open(json_filename,'w')
	for item in json_object:
		escaped = repr(item).replace("u'", '"').replace("':", '":').replace("{'", '{"').replace("',", '",').replace("'}", '"}')
		print(escaped, file=jsonf)
	f.close()
	jsonf.close()


if __name__=="__main__":
 convert(sys.argv[1:])
