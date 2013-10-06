import org.apache.shiro.crypto.hash.Sha256Hash

import edu.gatech.mentalhealthliberia.PatientEncounterForm
import edu.gatech.mentalhealthliberia.Version

import grails.util.Environment
import grails.converters.*

import org.codehaus.groovy.grails.web.json.*; // package containing JSONObject, JSONArray,...

class BootStrap {

    def init = { servletContext ->
		if (Environment.current ==  Environment.DEVELOPMENT) {
			// setup test users and roles
			
			def versionNum = new Version(num: 1)
			versionNum.save()
			
			def adminRole = new ShiroRole(name: "admin")
			adminRole.addToPermissions("patientEncounterForm:*") // create, modify, delete any form
			adminRole.addToPermissions("shiroUser:*") // create, modify, delete any user
			adminRole.addToPermissions("searchable:*")
			adminRole.save()
			
			// This user should only be created once, and the password changed immediately.
			def adminUser = new ShiroUser(username: "admin", passwordHash: new Sha256Hash("admin").toHex())
			adminUser.addToRoles(adminRole)
			adminUser.save()
			
			def analystRole = new ShiroRole(name: "analyst")
			analystRole.addToPermissions("patientEncounterForm:show,list,analyze,generateReport")
			analystRole.addToPermissions("searchable:*")
			analystRole.save()
			
//			def analystUser = new ShiroUser(username: "analyst", passwordHash: new Sha256Hash("analyst").toHex())
//			analystUser.addToRoles(analystRole)
//			analystUser.save()
//			
			def clinicianRole = new ShiroRole(name: "clinician")
			clinicianRole.addToPermissions("patientEncounterForm:show,list,upload,download") // also allow form upload and client download
			clinicianRole.addToPermissions("searchable:*")
			clinicianRole.save()
			
			def clinicianUser = new ShiroUser(username: "clinician", passwordHash: new Sha256Hash("clinician").toHex())
			clinicianUser.addToRoles(clinicianRole)
			clinicianUser.save()
			
//			for (int i = 0; i < 100; i++) {
//				def form1 = new PatientEncounterForm(clinicianID: "1111", dateOfService: new Date(99, 1, 1 + i), countyOfResidence: "Bomi",
//								phq: i*2, gaf: i*3, cage: i*4)
//				if (i % 10 == 0) {
//					form1.phq = null
//				}
//				if (!form1.validate()) {
//					log.error form1.errors
//				}
//				form1.save()
//			}
			
			
			def formJson = """{"age":"8","amitriptyline":"false","anxietyDisorder":"","cage":"","carbamazepine":"false","carbmazepineAntiepileptic":"false","chlorpromazine":"false","class":"mentalhealthliberia.PatientEncounterForm","clinicianID":"3015","clinicianTrainingLevel":"Psychiatric clinician training","clomipramine":"false","clonazepam":"false","counselingFamilyPsychoEducational":"true","counselingFamilyTherapy":"false","counselingGroup":"false","counselingIndividual":"false","counselingNone":"false","countyOfResidence":"Bomi","dateOfBirth":"290868354","dateOfService":1358416697000,"depakote":"false","depakoteAntiepileptic":"false","diagnosisPrimary":"","diazepam":"false","dischargeDisposition":"Home","distanceTraveled":"3","education":"No formal education","epilepsy":"With grand mal seizure","epilepticOtherSymptoms":"","escitalopram":"false","euroqol":"","familyPsychoEducation":"Support group","fathersName":"664822234","fluoxetine":"false","fluphenazine":"false","fluphenazineDecanoateInjection":"false","followUpCareCounseling":true,"followUpCareMedication":true,"gaf":"70","gender":"Male","haloperidal":"false","haloperidalDecanoateInjection":"false","imipramine":"false","individualCounseling":"CBT","lithium":"false","locationOfService":"Liberia Government Hospital,Bomi Co.","lorazepam":"false","maritalStatus":"Single, never married","medicationsNotAvailable":"Phenobarbital","moodDisorder":"","numberOfDaysInLifeRole":"26","numberOfSeizuresPerMonth":"4-5","otherAnticholinergic":"false","otherAntidepressant":"false","otherAntiepileptic":"false","otherAntipsychotic":"false","otherMedicalCondition":"","otherMoodStabilizer":"false","otherSedative":"false","otherSymptomsScore":"","patientName":"618928541","phenobarbital":true,"phenytoin":"false","phq":"","placeOfBirth":"1451279591","psychoticDisorder":"","reasonOther":"false","reasonSeekingMentalHealthCare":true,"referralSource":"Messages (radio, etc)","reportData":true,"risperidone":"false","risperidoneConstaInjection":"false","secondaryDiagnosis":"","sertraline":"false","somatoformDisorder":"","substanceAbuseDisorder":"","substanceAbuseDisorder2":"","trihexyphenidyl":"false","whoDas":""}"""
			def obj = JSON.parse(formJson)
			obj.dateOfService = new Date(obj.dateOfService)
			PatientEncounterForm patientEncounterForm = new PatientEncounterForm(obj);
			patientEncounterForm.save()
			
//			
//			
//			def form2 = new PatientEncounterForm(clinicianID: "1111", dateOfService: new Date(99, 2, 1), countyOfResidence: "Bomi",
//							phq: 15, gaf: 10, cage: 20)
//			form2.save()
//			
//			def form3 = new PatientEncounterForm(clinicianID: "1111", dateOfService: new Date(99, 3, 1), countyOfResidence: "Bomi",
//							phq: 15, gaf: 15, cage: 25)
//			form3.save()
//			
//			def form4 = new PatientEncounterForm(clinicianID: "1111", dateOfService: new Date(99, 4, 1), countyOfResidence: "Bomi",
//							phq: 10, gaf: 10, cage: 10)
//			form2.save()
//			
//			def form5 = new PatientEncounterForm(clinicianID: "1112", dateOfService: new Date(99, 1, 1), countyOfResidence: "Bomi",
//							phq: 5, gaf: 10, cage: 7)
//			form5.save()
//			
//			def form6 = new PatientEncounterForm(clinicianID: "1112", dateOfService: new Date(99, 2, 1), countyOfResidence: "Bomi",
//							phq: 9, gaf: 9, cage: 8)
//			form6.save()
//			
//			def form7 = new PatientEncounterForm(clinicianID: "1112", dateOfService: new Date(99, 3, 1), countyOfResidence: "Bomi",
//							phq: 12, gaf: 15, cage: 11)
//			form7.save()
//			
//			def form8 = new PatientEncounterForm(clinicianID: "1112", dateOfService: new Date(99, 4, 1), countyOfResidence: "Bomi",
//							phq: 17, gaf: 9, cage: 13)
//			form8.save()
		}
    }
    def destroy = {
    }
}
