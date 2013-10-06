
<%@ page import="edu.gatech.mentalhealthliberia.PatientEncounterForm" %>
<%@ page import="org.apache.shiro.SecurityUtils" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <r:require module="export"/>
        <export:resource />
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(controller: 'patientEncounterForm', action: 'list')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" controller="searchable">Search patient encounter forms</g:link></span>
            <g:if test="${SecurityUtils.subject.hasRole('admin') || SecurityUtils.subject.hasRole('analyst')}">
            <span class="menuButton"><g:link class="create" action="analyze">Generate Reports</g:link></span>
            </g:if>
            <g:if test="${SecurityUtils.subject.hasRole('admin') || SecurityUtils.subject.hasRole('clinician')}">
            <span class="menuButton"><g:link class="create" action="download">Download latest software</g:link></span>
            </g:if>
        </div>
        <div class="body">
            <h1>List of Patient Encounter Forms</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'patientEncounterForm.id.label', default: 'Form ID')}" />
                        
                            <g:sortableColumn property="clinicianID" title="${message(code: 'patientEncounterForm.clinicianID.label', default: 'Clinician ID')}" />
                        
                            <g:sortableColumn property="locationOfService" title="${message(code: 'patientEncounterForm.locationOfService.label', default: 'Location of Service')}" />
                            
                            <g:sortableColumn property="dateOfService" title="${message(code: 'patientEncounterForm.dateOfService.label', default: 'Date of Service')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${patientEncounterFormInstanceList}" status="i" var="patientEncounterFormInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${patientEncounterFormInstance.id}">${fieldValue(bean: patientEncounterFormInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: patientEncounterFormInstance, field: "clinicianID")}</td>
                        
                            <td>${fieldValue(bean: patientEncounterFormInstance, field: "locationOfService")}</td>
                            
                            <td>${fieldValue(bean: patientEncounterFormInstance, field: "dateOfService")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${patientEncounterFormInstanceTotal}" />
            </div>
            <export:formats formats="['csv', 'excel', 'ods', 'pdf', 'xml']" />
        </div>
        <shiro:hasRole name="admin">
        <div class="dialog" style="float: right;">
            <h1>Upload Latest Client</h1>
        	<g:uploadForm action="uploadLatestClient" method="post" >
        	<table>
			  <tr class="prop">
			    <td valign="top" class="name">
			      <label for="payload">Latest Client:</label>
			    </td>
			    <td valign="top">
			      <input type="file" id="payload" name="payload"/>
			    </td>
			  </tr>
			  <tr class="prop">
			    <td valign="top" class="name">
			      <label for="versionNum">Version Number:</label>
			    </td>
			    <td valign="top">
			      <input type="text" id="versionNum" name="versionNum"/>
			    </td>
			  </tr>
			</table>
                <div class="buttons">
					<span class="button"><input class="edit" type="submit" value="Upload"></input></span>
                    <span class="button"><input class="edit" onclick="window.location='${createLink(controller:'shiroUser', action:'list')}'" value="Edit Users"></input></span>
                </div>
			</g:uploadForm>
			<div class="dialog">
			</div>
        </div>
        </shiro:hasRole>
    </body>
</html>
