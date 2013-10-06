
<%@ page import="edu.gatech.mentalhealthliberia.PatientEncounterForm" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.clinicianID.label" default="Clinician ID" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "clinicianID")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.locationOfService.label" default="Location Of Service" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "locationOfService")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.reasonSeekingMentalHealthCare.label" default="Reason Seeking Mental Health Care" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.reasonSeekingMentalHealthCare}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.reasonOther.label" default="Reason Other" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.reasonOther}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.clinicianTrainingLevel.label" default="Clinician Training Level" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "clinicianTrainingLevel")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.referralSource.label" default="Referral Source" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "referralSource")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.dateOfService.label" default="Date Of Service" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${patientEncounterFormInstance?.dateOfService}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.patientName.label" default="Patient Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "patientName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.dateOfBirth.label" default="Date Of Birth" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "dateOfBirth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.gender.label" default="Gender" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "gender")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.fathersName.label" default="Fathers Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "fathersName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.placeOfBirth.label" default="Place Of Birth" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "placeOfBirth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.age.label" default="Age" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "age")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.countyOfResidence.label" default="County Of Residence" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "countyOfResidence")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.distanceTraveled.label" default="Distance Traveled" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "distanceTraveled")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.numberOfDaysInLifeRole.label" default="Number Of Days In Life Role" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "numberOfDaysInLifeRole")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.maritalStatus.label" default="Marital Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "maritalStatus")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.education.label" default="Education" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "education")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.phq.label" default="Phq" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "phq")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.gaf.label" default="Gaf" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "gaf")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.cage.label" default="Cage" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "cage")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.whoDas.label" default="Who Das" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "whoDas")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.euroqol.label" default="Euroqol" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "euroqol")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherSymptomsScore.label" default="Other Symptoms Score" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "otherSymptomsScore")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.diagnosisPrimary.label" default="Diagnosis Primary" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "diagnosisPrimary")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.moodDisorder.label" default="Mood Disorder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "moodDisorder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.anxietyDisorder.label" default="Anxiety Disorder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "anxietyDisorder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.psychoticDisorder.label" default="Psychotic Disorder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "psychoticDisorder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.somatoformDisorder.label" default="Somatoform Disorder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "somatoformDisorder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.substanceAbuseDisorder.label" default="Substance Abuse Disorder" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "substanceAbuseDisorder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.substanceAbuseDisorder2.label" default="Substance Abuse Disorder2" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "substanceAbuseDisorder2")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.epilepsy.label" default="Epilepsy" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "epilepsy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.numberOfSeizuresPerMonth.label" default="Number Of Seizures Per Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "numberOfSeizuresPerMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.epilepticOtherSymptoms.label" default="Epileptic Other Symptoms" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "epilepticOtherSymptoms")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherMedicalCondition.label" default="Other Medical Condition" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "otherMedicalCondition")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.secondaryDiagnosis.label" default="Secondary Diagnosis" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "secondaryDiagnosis")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.fluoxetine.label" default="Fluoxetine" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.fluoxetine}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.escitalopram.label" default="Escitalopram" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.escitalopram}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.sertraline.label" default="Sertraline" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.sertraline}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.amitriptyline.label" default="Amitriptyline" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.amitriptyline}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.imipramine.label" default="Imipramine" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.imipramine}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherAntidepressant.label" default="Other Antidepressant" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.otherAntidepressant}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.haloperidal.label" default="Haloperidal" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.haloperidal}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.haloperidalDecanoateInjection.label" default="Haloperidal Decanoate Injection" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.haloperidalDecanoateInjection}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.chlorpromazine.label" default="Chlorpromazine" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.chlorpromazine}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.fluphenazine.label" default="Fluphenazine" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.fluphenazine}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.fluphenazineDecanoateInjection.label" default="Fluphenazine Decanoate Injection" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.fluphenazineDecanoateInjection}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.risperidone.label" default="Risperidone" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.risperidone}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.risperidoneConstaInjection.label" default="Risperidone Consta Injection" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.risperidoneConstaInjection}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherAntipsychotic.label" default="Other Antipsychotic" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.otherAntipsychotic}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.clomipramine.label" default="Clomipramine" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.clomipramine}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.clonazepam.label" default="Clonazepam" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.clonazepam}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.diazepam.label" default="Diazepam" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.diazepam}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.lorazepam.label" default="Lorazepam" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.lorazepam}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherSedative.label" default="Other Sedative" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.otherSedative}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.depakote.label" default="Depakote" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.depakote}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.lithium.label" default="Lithium" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.lithium}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.carbamazepine.label" default="Carbamazepine" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.carbamazepine}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherMoodStabilizer.label" default="Other Mood Stabilizer" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.otherMoodStabilizer}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.depakoteAntiepileptic.label" default="Depakote Antiepileptic" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.depakoteAntiepileptic}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.carbmazepineAntiepileptic.label" default="Carbmazepine Antiepileptic" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.carbmazepineAntiepileptic}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.phenobarbital.label" default="Phenobarbital" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.phenobarbital}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.phenytoin.label" default="Phenytoin" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.phenytoin}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherAntiepileptic.label" default="Other Antiepileptic" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.otherAntiepileptic}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.trihexyphenidyl.label" default="Trihexyphenidyl" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.trihexyphenidyl}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.otherAnticholinergic.label" default="Other Anticholinergic" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.otherAnticholinergic}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.counselingIndividual.label" default="Counseling Individual" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.counselingIndividual}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.counselingGroup.label" default="Counseling Group" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.counselingGroup}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.counselingFamilyPsychoEducational.label" default="Counseling Family Psycho Educational" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.counselingFamilyPsychoEducational}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.counselingFamilyTherapy.label" default="Counseling Family Therapy" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.counselingFamilyTherapy}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.counselingNone.label" default="Counseling None" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.counselingNone}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.individualCounseling.label" default="Individual Counseling" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "individualCounseling")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.familyPsychoEducation.label" default="Family Psycho Education" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "familyPsychoEducation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.medicationsNotAvailable.label" default="Medications Not Available" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "medicationsNotAvailable")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.followUpCareMedication.label" default="Follow Up Care Medication" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.followUpCareMedication}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.followUpCareCounseling.label" default="Follow Up Care Counseling" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.followUpCareCounseling}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.dischargeDisposition.label" default="Discharge Disposition" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: patientEncounterFormInstance, field: "dischargeDisposition")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="patientEncounterForm.reportData.label" default="Report Data" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${patientEncounterFormInstance?.reportData}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${patientEncounterFormInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
