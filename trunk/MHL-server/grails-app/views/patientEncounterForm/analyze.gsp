
<%@ page import="edu.gatech.mentalhealthliberia.PatientEncounterForm" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm')}" />
        <title>Analyze Patient Encounters</title>
        <g:javascript library="prototype"/>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        
        <script type="text/javascript">

          // Load Google visualization packages
          google.load('visualization', '1', {'packages':['annotatedtimeline']});
          google.setOnLoadCallback(onLoad);

		  var chart = null;
    	  var data = null;
          
          function updateReport(response) {
        	  var json = eval(response.responseText);
        	  drawTimelineSeries(json);
          }

			function onLoad() {
				data = new google.visualization.DataTable();
				
		    	  data.addColumn('date', 'Date');
		    	  data.addColumn('number', 'PHQ');
		    	  data.addColumn('number', 'GAF');
		    	  data.addColumn('number', 'CAGE');
		    	  
		        data.addRows([]);
		        chart = new google.visualization.AnnotatedTimeLine(document.getElementById('chart_div'));
		        chart.draw(data, {displayAnnotations: true});
			}
          
          function drawTimelineSeries(values) {
			  data = new google.visualization.DataTable();
				
	    	  data.addColumn('date', 'Date');
	    	  data.addColumn('number', 'PHQ');
	    	  data.addColumn('number', 'GAF');
	    	  data.addColumn('number', 'CAGE');

			  for (var i = 0; i < values.length; i++) {
				var newRow = new Array();
				newRow[0] = new Date(values[i][0]);
				newRow[1] = values[i][1];
				newRow[2] = values[i][2];
				newRow[3] = values[i][3];
				try {
				data.addRow(newRow);
				} catch (e) {
					window.alert("Exception: " + e)
				}
			  }
			  chart = new google.visualization.AnnotatedTimeLine(document.getElementById('chart_div'));
        	  chart.draw(data, {displayAnnotations: true});
          }

          function updateCategoryField(selectBox) {
			switch (selectBox.value) {
			case "all":
				document.getElementById("clinicianIDField").style.display = "none";
				document.getElementById("countyField").style.display = "none";
				break;
			case "clinician":
				document.getElementById("clinicianIDField").style.display = "block";
				document.getElementById("countyField").style.display = "none";
				break;
			case "county":
				document.getElementById("clinicianIDField").style.display = "none";
				document.getElementById("countyField").style.display = "block";
				break;
			default:
				// Should never happen, but just in case...
				window.alert("Unknown Category Field: " + selectBox.value);
				break;
			}
          } 
        </script>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(controller: 'patientEncounterForm', action: 'list')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1>Generate Patient Encounter Form Reports</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
            	<div id="controls">
            		<g:formRemote name="reportControls" url="[ controller: 'patientEncounterForm', action:'generateReport' ]" onSuccess="updateReport(e)" onFailure="alert(e.responseText);">
            		<table>
            			<tbody>
            				<tr><td><label for="startDate">Start Date</label></td>
            				<td><g:datePicker name="startDate" noSelection="['':'-Choose-']" value="${new Date(99,1,1)}" precision="day" ></g:datePicker></td></tr>
            				<tr><td><label for="endDate">End Date</label></td>
            				<td><g:datePicker name="endDate" noSelection="['':'-Choose-']" precision="day" ></g:datePicker></td></tr>
            				<tr><td><label for="category">Category</label></td>
            				<td>
            					<select name="category" onchange="updateCategoryField(this)">
								  <option value="all">All</option>
								  <option value="clinician">Clinician</option>
								  <option value="county">County</option>
								</select>
            				</td>
            				</tr>
            				<tr id="clinicianIDField" style="display: none;">
            					<td><label for="clinicianID">Clinician ID</label></label>
            					<td><input type="text" name="clinicianID"></input></td>
            				</tr>
            				<tr id="countyField" style="display: none;">
            					<td><label for="county">County</label></label>
            					<td>
            						<select name="county">
            							<option value="Bomi">Bomi</option>
            							<option value="Bong">Bong</option>
            							<option value="Gbarpolo">Gbarpolo</option>
            							<option value="Grand Bassa">Grand Bassa</option>
            							<option value="Grand Cape Mount">Grand Cape Mount</option>
            							<option value="Grand Gedah">Grand Gedah</option>
            							<option value="Grand Kru">Grand Kru</option>
            							<option value="Lofa">Lofa</option>
            							<option value="Margibi">Margibi</option>
            							<option selected="true" value="Maryland">Maryland</option>
            							<option value="Montserrado">Montserrado</option>
            							<option value="Nimba">Nimba</option>
            							<option value="River Cess">River Cess</option>
            							<option value="River Gee">River Gee</option>
            							<option value="Sinoe">Sinoe</option>
            							<option value="Other">Other</option>
            						</select>
            					</td>
            				</tr>
            			</tbody>
   					</table>
		            <div class="buttons">
		                <g:form>
		                    <g:hiddenField name="id" value="${patientEncounterFormInstance?.id}" />
		                    <span class="button"><input name="login" type="submit" class="edit" value="Generate Report" ></input></span>
		                </g:form>
		            </div>
            		</g:formRemote>
            	</div>
            </div>
            <div class="dialog">
            	<div id='chart_div' style='width: 700px; height: 240px;'></div>
            </div>
        </div>
    </body>
</html>
