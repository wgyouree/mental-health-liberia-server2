

<%@ page import="edu.gatech.mentalhealthliberia.PatientEncounterForm" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${patientEncounterFormInstance}">
            <div class="errors">
                <g:renderErrors bean="${patientEncounterFormInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${patientEncounterFormInstance?.id}" />
                <g:hiddenField name="version" value="${patientEncounterFormInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="clinicianID"><g:message code="patientEncounterForm.clinicianID.label" default="Clinician ID" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'clinicianID', 'errors')}">
                                    <g:textField name="clinicianID" value="${patientEncounterFormInstance?.clinicianID}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="locationOfService"><g:message code="patientEncounterForm.locationOfService.label" default="Location Of Service" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'locationOfService', 'errors')}">
                                    <g:textField name="locationOfService" value="${patientEncounterFormInstance?.locationOfService}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="reasonSeekingMentalHealthCare"><g:message code="patientEncounterForm.reasonSeekingMentalHealthCare.label" default="Reason Seeking Mental Health Care" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'reasonSeekingMentalHealthCare', 'errors')}">
                                    <g:checkBox name="reasonSeekingMentalHealthCare" value="${patientEncounterFormInstance?.reasonSeekingMentalHealthCare}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="reasonOther"><g:message code="patientEncounterForm.reasonOther.label" default="Reason Other" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'reasonOther', 'errors')}">
                                    <g:checkBox name="reasonOther" value="${patientEncounterFormInstance?.reasonOther}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="clinicianTrainingLevel"><g:message code="patientEncounterForm.clinicianTrainingLevel.label" default="Clinician Training Level" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'clinicianTrainingLevel', 'errors')}">
                                    <g:textField name="clinicianTrainingLevel" value="${patientEncounterFormInstance?.clinicianTrainingLevel}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="referralSource"><g:message code="patientEncounterForm.referralSource.label" default="Referral Source" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'referralSource', 'errors')}">
                                    <g:textField name="referralSource" value="${patientEncounterFormInstance?.referralSource}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateOfService"><g:message code="patientEncounterForm.dateOfService.label" default="Date Of Service" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'dateOfService', 'errors')}">
                                    <g:datePicker name="dateOfService" precision="day" value="${patientEncounterFormInstance?.dateOfService}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="patientName"><g:message code="patientEncounterForm.patientName.label" default="Patient Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'patientName', 'errors')}">
                                    <g:textField name="patientName" value="${patientEncounterFormInstance?.patientName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateOfBirth"><g:message code="patientEncounterForm.dateOfBirth.label" default="Date Of Birth" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'dateOfBirth', 'errors')}">
                                    <g:textField name="dateOfBirth" value="${patientEncounterFormInstance?.dateOfBirth}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gender"><g:message code="patientEncounterForm.gender.label" default="Gender" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'gender', 'errors')}">
                                    <g:textField name="gender" value="${patientEncounterFormInstance?.gender}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fathersName"><g:message code="patientEncounterForm.fathersName.label" default="Fathers Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'fathersName', 'errors')}">
                                    <g:textField name="fathersName" value="${patientEncounterFormInstance?.fathersName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="placeOfBirth"><g:message code="patientEncounterForm.placeOfBirth.label" default="Place Of Birth" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'placeOfBirth', 'errors')}">
                                    <g:textField name="placeOfBirth" value="${patientEncounterFormInstance?.placeOfBirth}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="age"><g:message code="patientEncounterForm.age.label" default="Age" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'age', 'errors')}">
                                    <g:textField name="age" value="${patientEncounterFormInstance?.age}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="countyOfResidence"><g:message code="patientEncounterForm.countyOfResidence.label" default="County Of Residence" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'countyOfResidence', 'errors')}">
                                    <g:textField name="countyOfResidence" value="${patientEncounterFormInstance?.countyOfResidence}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="distanceTraveled"><g:message code="patientEncounterForm.distanceTraveled.label" default="Distance Traveled" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'distanceTraveled', 'errors')}">
                                    <g:textField name="distanceTraveled" value="${patientEncounterFormInstance?.distanceTraveled}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numberOfDaysInLifeRole"><g:message code="patientEncounterForm.numberOfDaysInLifeRole.label" default="Number Of Days In Life Role" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'numberOfDaysInLifeRole', 'errors')}">
                                    <g:textField name="numberOfDaysInLifeRole" value="${patientEncounterFormInstance?.numberOfDaysInLifeRole}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="maritalStatus"><g:message code="patientEncounterForm.maritalStatus.label" default="Marital Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'maritalStatus', 'errors')}">
                                    <g:textField name="maritalStatus" value="${patientEncounterFormInstance?.maritalStatus}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="education"><g:message code="patientEncounterForm.education.label" default="Education" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'education', 'errors')}">
                                    <g:textField name="education" value="${patientEncounterFormInstance?.education}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phq"><g:message code="patientEncounterForm.phq.label" default="Phq" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'phq', 'errors')}">
                                    <g:textField name="phq" value="${fieldValue(bean: patientEncounterFormInstance, field: 'phq')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gaf"><g:message code="patientEncounterForm.gaf.label" default="Gaf" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'gaf', 'errors')}">
                                    <g:textField name="gaf" value="${fieldValue(bean: patientEncounterFormInstance, field: 'gaf')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cage"><g:message code="patientEncounterForm.cage.label" default="Cage" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'cage', 'errors')}">
                                    <g:textField name="cage" value="${fieldValue(bean: patientEncounterFormInstance, field: 'cage')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="whoDas"><g:message code="patientEncounterForm.whoDas.label" default="Who Das" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'whoDas', 'errors')}">
                                    <g:textField name="whoDas" value="${fieldValue(bean: patientEncounterFormInstance, field: 'whoDas')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="euroqol"><g:message code="patientEncounterForm.euroqol.label" default="Euroqol" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'euroqol', 'errors')}">
                                    <g:textField name="euroqol" value="${fieldValue(bean: patientEncounterFormInstance, field: 'euroqol')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherSymptomsScore"><g:message code="patientEncounterForm.otherSymptomsScore.label" default="Other Symptoms Score" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherSymptomsScore', 'errors')}">
                                    <g:textField name="otherSymptomsScore" value="${patientEncounterFormInstance?.otherSymptomsScore}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="diagnosisPrimary"><g:message code="patientEncounterForm.diagnosisPrimary.label" default="Diagnosis Primary" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'diagnosisPrimary', 'errors')}">
                                    <g:textField name="diagnosisPrimary" value="${patientEncounterFormInstance?.diagnosisPrimary}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="moodDisorder"><g:message code="patientEncounterForm.moodDisorder.label" default="Mood Disorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'moodDisorder', 'errors')}">
                                    <g:textField name="moodDisorder" value="${patientEncounterFormInstance?.moodDisorder}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="anxietyDisorder"><g:message code="patientEncounterForm.anxietyDisorder.label" default="Anxiety Disorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'anxietyDisorder', 'errors')}">
                                    <g:textField name="anxietyDisorder" value="${patientEncounterFormInstance?.anxietyDisorder}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="psychoticDisorder"><g:message code="patientEncounterForm.psychoticDisorder.label" default="Psychotic Disorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'psychoticDisorder', 'errors')}">
                                    <g:textField name="psychoticDisorder" value="${patientEncounterFormInstance?.psychoticDisorder}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="somatoformDisorder"><g:message code="patientEncounterForm.somatoformDisorder.label" default="Somatoform Disorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'somatoformDisorder', 'errors')}">
                                    <g:textField name="somatoformDisorder" value="${patientEncounterFormInstance?.somatoformDisorder}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="substanceAbuseDisorder"><g:message code="patientEncounterForm.substanceAbuseDisorder.label" default="Substance Abuse Disorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'substanceAbuseDisorder', 'errors')}">
                                    <g:textField name="substanceAbuseDisorder" value="${patientEncounterFormInstance?.substanceAbuseDisorder}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="substanceAbuseDisorder2"><g:message code="patientEncounterForm.substanceAbuseDisorder2.label" default="Substance Abuse Disorder2" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'substanceAbuseDisorder2', 'errors')}">
                                    <g:textField name="substanceAbuseDisorder2" value="${patientEncounterFormInstance?.substanceAbuseDisorder2}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="epilepsy"><g:message code="patientEncounterForm.epilepsy.label" default="Epilepsy" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'epilepsy', 'errors')}">
                                    <g:textField name="epilepsy" value="${patientEncounterFormInstance?.epilepsy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numberOfSeizuresPerMonth"><g:message code="patientEncounterForm.numberOfSeizuresPerMonth.label" default="Number Of Seizures Per Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'numberOfSeizuresPerMonth', 'errors')}">
                                    <g:textField name="numberOfSeizuresPerMonth" value="${patientEncounterFormInstance?.numberOfSeizuresPerMonth}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="epilepticOtherSymptoms"><g:message code="patientEncounterForm.epilepticOtherSymptoms.label" default="Epileptic Other Symptoms" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'epilepticOtherSymptoms', 'errors')}">
                                    <g:textField name="epilepticOtherSymptoms" value="${patientEncounterFormInstance?.epilepticOtherSymptoms}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherMedicalCondition"><g:message code="patientEncounterForm.otherMedicalCondition.label" default="Other Medical Condition" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherMedicalCondition', 'errors')}">
                                    <g:textField name="otherMedicalCondition" value="${patientEncounterFormInstance?.otherMedicalCondition}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="secondaryDiagnosis"><g:message code="patientEncounterForm.secondaryDiagnosis.label" default="Secondary Diagnosis" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'secondaryDiagnosis', 'errors')}">
                                    <g:textField name="secondaryDiagnosis" value="${patientEncounterFormInstance?.secondaryDiagnosis}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fluoxetine"><g:message code="patientEncounterForm.fluoxetine.label" default="Fluoxetine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'fluoxetine', 'errors')}">
                                    <g:checkBox name="fluoxetine" value="${patientEncounterFormInstance?.fluoxetine}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="escitalopram"><g:message code="patientEncounterForm.escitalopram.label" default="Escitalopram" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'escitalopram', 'errors')}">
                                    <g:checkBox name="escitalopram" value="${patientEncounterFormInstance?.escitalopram}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sertraline"><g:message code="patientEncounterForm.sertraline.label" default="Sertraline" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'sertraline', 'errors')}">
                                    <g:checkBox name="sertraline" value="${patientEncounterFormInstance?.sertraline}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="amitriptyline"><g:message code="patientEncounterForm.amitriptyline.label" default="Amitriptyline" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'amitriptyline', 'errors')}">
                                    <g:checkBox name="amitriptyline" value="${patientEncounterFormInstance?.amitriptyline}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="imipramine"><g:message code="patientEncounterForm.imipramine.label" default="Imipramine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'imipramine', 'errors')}">
                                    <g:checkBox name="imipramine" value="${patientEncounterFormInstance?.imipramine}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherAntidepressant"><g:message code="patientEncounterForm.otherAntidepressant.label" default="Other Antidepressant" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherAntidepressant', 'errors')}">
                                    <g:checkBox name="otherAntidepressant" value="${patientEncounterFormInstance?.otherAntidepressant}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="haloperidal"><g:message code="patientEncounterForm.haloperidal.label" default="Haloperidal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'haloperidal', 'errors')}">
                                    <g:checkBox name="haloperidal" value="${patientEncounterFormInstance?.haloperidal}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="haloperidalDecanoateInjection"><g:message code="patientEncounterForm.haloperidalDecanoateInjection.label" default="Haloperidal Decanoate Injection" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'haloperidalDecanoateInjection', 'errors')}">
                                    <g:checkBox name="haloperidalDecanoateInjection" value="${patientEncounterFormInstance?.haloperidalDecanoateInjection}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="chlorpromazine"><g:message code="patientEncounterForm.chlorpromazine.label" default="Chlorpromazine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'chlorpromazine', 'errors')}">
                                    <g:checkBox name="chlorpromazine" value="${patientEncounterFormInstance?.chlorpromazine}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fluphenazine"><g:message code="patientEncounterForm.fluphenazine.label" default="Fluphenazine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'fluphenazine', 'errors')}">
                                    <g:checkBox name="fluphenazine" value="${patientEncounterFormInstance?.fluphenazine}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fluphenazineDecanoateInjection"><g:message code="patientEncounterForm.fluphenazineDecanoateInjection.label" default="Fluphenazine Decanoate Injection" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'fluphenazineDecanoateInjection', 'errors')}">
                                    <g:checkBox name="fluphenazineDecanoateInjection" value="${patientEncounterFormInstance?.fluphenazineDecanoateInjection}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="risperidone"><g:message code="patientEncounterForm.risperidone.label" default="Risperidone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'risperidone', 'errors')}">
                                    <g:checkBox name="risperidone" value="${patientEncounterFormInstance?.risperidone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="risperidoneConstaInjection"><g:message code="patientEncounterForm.risperidoneConstaInjection.label" default="Risperidone Consta Injection" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'risperidoneConstaInjection', 'errors')}">
                                    <g:checkBox name="risperidoneConstaInjection" value="${patientEncounterFormInstance?.risperidoneConstaInjection}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherAntipsychotic"><g:message code="patientEncounterForm.otherAntipsychotic.label" default="Other Antipsychotic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherAntipsychotic', 'errors')}">
                                    <g:checkBox name="otherAntipsychotic" value="${patientEncounterFormInstance?.otherAntipsychotic}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="clomipramine"><g:message code="patientEncounterForm.clomipramine.label" default="Clomipramine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'clomipramine', 'errors')}">
                                    <g:checkBox name="clomipramine" value="${patientEncounterFormInstance?.clomipramine}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="clonazepam"><g:message code="patientEncounterForm.clonazepam.label" default="Clonazepam" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'clonazepam', 'errors')}">
                                    <g:checkBox name="clonazepam" value="${patientEncounterFormInstance?.clonazepam}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="diazepam"><g:message code="patientEncounterForm.diazepam.label" default="Diazepam" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'diazepam', 'errors')}">
                                    <g:checkBox name="diazepam" value="${patientEncounterFormInstance?.diazepam}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lorazepam"><g:message code="patientEncounterForm.lorazepam.label" default="Lorazepam" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'lorazepam', 'errors')}">
                                    <g:checkBox name="lorazepam" value="${patientEncounterFormInstance?.lorazepam}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherSedative"><g:message code="patientEncounterForm.otherSedative.label" default="Other Sedative" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherSedative', 'errors')}">
                                    <g:checkBox name="otherSedative" value="${patientEncounterFormInstance?.otherSedative}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="depakote"><g:message code="patientEncounterForm.depakote.label" default="Depakote" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'depakote', 'errors')}">
                                    <g:checkBox name="depakote" value="${patientEncounterFormInstance?.depakote}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lithium"><g:message code="patientEncounterForm.lithium.label" default="Lithium" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'lithium', 'errors')}">
                                    <g:checkBox name="lithium" value="${patientEncounterFormInstance?.lithium}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="carbamazepine"><g:message code="patientEncounterForm.carbamazepine.label" default="Carbamazepine" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'carbamazepine', 'errors')}">
                                    <g:checkBox name="carbamazepine" value="${patientEncounterFormInstance?.carbamazepine}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherMoodStabilizer"><g:message code="patientEncounterForm.otherMoodStabilizer.label" default="Other Mood Stabilizer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherMoodStabilizer', 'errors')}">
                                    <g:checkBox name="otherMoodStabilizer" value="${patientEncounterFormInstance?.otherMoodStabilizer}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="depakoteAntiepileptic"><g:message code="patientEncounterForm.depakoteAntiepileptic.label" default="Depakote Antiepileptic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'depakoteAntiepileptic', 'errors')}">
                                    <g:checkBox name="depakoteAntiepileptic" value="${patientEncounterFormInstance?.depakoteAntiepileptic}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="carbmazepineAntiepileptic"><g:message code="patientEncounterForm.carbmazepineAntiepileptic.label" default="Carbmazepine Antiepileptic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'carbmazepineAntiepileptic', 'errors')}">
                                    <g:checkBox name="carbmazepineAntiepileptic" value="${patientEncounterFormInstance?.carbmazepineAntiepileptic}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phenobarbital"><g:message code="patientEncounterForm.phenobarbital.label" default="Phenobarbital" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'phenobarbital', 'errors')}">
                                    <g:checkBox name="phenobarbital" value="${patientEncounterFormInstance?.phenobarbital}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phenytoin"><g:message code="patientEncounterForm.phenytoin.label" default="Phenytoin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'phenytoin', 'errors')}">
                                    <g:checkBox name="phenytoin" value="${patientEncounterFormInstance?.phenytoin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherAntiepileptic"><g:message code="patientEncounterForm.otherAntiepileptic.label" default="Other Antiepileptic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherAntiepileptic', 'errors')}">
                                    <g:checkBox name="otherAntiepileptic" value="${patientEncounterFormInstance?.otherAntiepileptic}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="trihexyphenidyl"><g:message code="patientEncounterForm.trihexyphenidyl.label" default="Trihexyphenidyl" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'trihexyphenidyl', 'errors')}">
                                    <g:checkBox name="trihexyphenidyl" value="${patientEncounterFormInstance?.trihexyphenidyl}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherAnticholinergic"><g:message code="patientEncounterForm.otherAnticholinergic.label" default="Other Anticholinergic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'otherAnticholinergic', 'errors')}">
                                    <g:checkBox name="otherAnticholinergic" value="${patientEncounterFormInstance?.otherAnticholinergic}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="counselingIndividual"><g:message code="patientEncounterForm.counselingIndividual.label" default="Counseling Individual" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'counselingIndividual', 'errors')}">
                                    <g:checkBox name="counselingIndividual" value="${patientEncounterFormInstance?.counselingIndividual}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="counselingGroup"><g:message code="patientEncounterForm.counselingGroup.label" default="Counseling Group" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'counselingGroup', 'errors')}">
                                    <g:checkBox name="counselingGroup" value="${patientEncounterFormInstance?.counselingGroup}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="counselingFamilyPsychoEducational"><g:message code="patientEncounterForm.counselingFamilyPsychoEducational.label" default="Counseling Family Psycho Educational" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'counselingFamilyPsychoEducational', 'errors')}">
                                    <g:checkBox name="counselingFamilyPsychoEducational" value="${patientEncounterFormInstance?.counselingFamilyPsychoEducational}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="counselingFamilyTherapy"><g:message code="patientEncounterForm.counselingFamilyTherapy.label" default="Counseling Family Therapy" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'counselingFamilyTherapy', 'errors')}">
                                    <g:checkBox name="counselingFamilyTherapy" value="${patientEncounterFormInstance?.counselingFamilyTherapy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="counselingNone"><g:message code="patientEncounterForm.counselingNone.label" default="Counseling None" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'counselingNone', 'errors')}">
                                    <g:checkBox name="counselingNone" value="${patientEncounterFormInstance?.counselingNone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="individualCounseling"><g:message code="patientEncounterForm.individualCounseling.label" default="Individual Counseling" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'individualCounseling', 'errors')}">
                                    <g:textField name="individualCounseling" value="${patientEncounterFormInstance?.individualCounseling}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="familyPsychoEducation"><g:message code="patientEncounterForm.familyPsychoEducation.label" default="Family Psycho Education" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'familyPsychoEducation', 'errors')}">
                                    <g:textField name="familyPsychoEducation" value="${patientEncounterFormInstance?.familyPsychoEducation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="medicationsNotAvailable"><g:message code="patientEncounterForm.medicationsNotAvailable.label" default="Medications Not Available" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'medicationsNotAvailable', 'errors')}">
                                    <g:textField name="medicationsNotAvailable" value="${patientEncounterFormInstance?.medicationsNotAvailable}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="followUpCareMedication"><g:message code="patientEncounterForm.followUpCareMedication.label" default="Follow Up Care Medication" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'followUpCareMedication', 'errors')}">
                                    <g:checkBox name="followUpCareMedication" value="${patientEncounterFormInstance?.followUpCareMedication}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="followUpCareCounseling"><g:message code="patientEncounterForm.followUpCareCounseling.label" default="Follow Up Care Counseling" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'followUpCareCounseling', 'errors')}">
                                    <g:checkBox name="followUpCareCounseling" value="${patientEncounterFormInstance?.followUpCareCounseling}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dischargeDisposition"><g:message code="patientEncounterForm.dischargeDisposition.label" default="Discharge Disposition" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'dischargeDisposition', 'errors')}">
                                    <g:textField name="dischargeDisposition" value="${patientEncounterFormInstance?.dischargeDisposition}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="reportData"><g:message code="patientEncounterForm.reportData.label" default="Report Data" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: patientEncounterFormInstance, field: 'reportData', 'errors')}">
                                    <g:checkBox name="reportData" value="${patientEncounterFormInstance?.reportData}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
