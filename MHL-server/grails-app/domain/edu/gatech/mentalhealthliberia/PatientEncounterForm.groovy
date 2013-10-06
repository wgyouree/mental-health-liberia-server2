package edu.gatech.mentalhealthliberia

import java.util.Date;

class PatientEncounterForm {

	static searchable = true;
	
    static constraints = {
		clinicianID(nullable: false, blank: false)
		locationOfService(nullable: true)
		reasonSeekingMentalHealthCare(nullable: true)
		reasonOther(nullable: true)
		clinicianTrainingLevel(nullable: true)
		referralSource(nullable: true)
		dateOfService(nullable: false)
		patientName(nullable: true) // hash of patient name
		dateOfBirth(nullable: true) // hash of date of birth
		gender(nullable: true)
		fathersName(nullable: true) // hash of fathers name
		placeOfBirth(nullable: true) // hash of place of birth
	
		// Patient Demographics
		age(nullable: true)
		countyOfResidence(nullable: true)
		distanceTraveled(nullable: true)
		numberOfDaysInLifeRole(nullable: true)
		maritalStatus(nullable: true)
		education(nullable: true)
	
		// Symptoms and Functioning
		phq(nullable: true)
		gaf(nullable: true)
		cage(nullable: true)
		whoDas(nullable: true)
		euroqol(nullable: true)
		otherSymptomsScore(nullable: true)
	
		// Diagnosis
		diagnosisPrimary(nullable: true)
		moodDisorder(nullable: true)
		anxietyDisorder(nullable: true)
		psychoticDisorder(nullable: true)
		somatoformDisorder(nullable: true)
		substanceAbuseDisorder(nullable: true)
		substanceAbuseDisorder2(nullable: true)
		epilepsy(nullable: true)
		numberOfSeizuresPerMonth(nullable: true)
		epilepticOtherSymptoms(nullable: true)
		otherMedicalCondition(nullable: true)
		secondaryDiagnosis(nullable: true)
	
		// Treatment
		fluoxetine(nullable: true)
		escitalopram(nullable: true)
		sertraline(nullable: true)
		amitriptyline(nullable: true)
		imipramine(nullable: true)
		otherAntidepressant(nullable: true)
		haloperidal(nullable: true)
		haloperidalDecanoateInjection(nullable: true)
		chlorpromazine(nullable: true)
		fluphenazine(nullable: true)
		fluphenazineDecanoateInjection(nullable: true)
		risperidone(nullable: true)
		risperidoneConstaInjection(nullable: true)
		otherAntipsychotic(nullable: true)
		clomipramine(nullable: true)
		clonazepam(nullable: true)
		diazepam(nullable: true)
		lorazepam(nullable: true)
		otherSedative(nullable: true)
		depakote(nullable: true)
		lithium(nullable: true)
		carbamazepine(nullable: true)
		otherMoodStabilizer(nullable: true)
		depakoteAntiepileptic(nullable: true)
		carbmazepineAntiepileptic(nullable: true)
		phenobarbital(nullable: true)
		phenytoin(nullable: true)
		otherAntiepileptic(nullable: true)
		trihexyphenidyl(nullable: true)
		otherAnticholinergic(nullable: true)
		counselingIndividual(nullable: true)
		counselingGroup(nullable: true)
		counselingFamilyPsychoEducational(nullable: true)
		counselingFamilyTherapy(nullable: true)
		counselingNone(nullable: true)
		individualCounseling(nullable: true)
		familyPsychoEducation(nullable: true)
		medicationsNotAvailable(nullable: true)
	
		// Discharge
		followUpCareMedication(nullable: true)
		followUpCareCounseling(nullable: true)
		dischargeDisposition(nullable: true)
		reportData(nullable: true)
		
		
		/* The following is not needed at this point
		 * ----------------------------------------------------------------
		clinicianTrainingLevel(
			inList:[
				'No formal training',
				'Community health worker training',
				'Physician\'s assistant training',
				'Psychiatric nurse training',
				'Other'])
		referralSource(inList:['Clinician', 'Messages (radio, etc)', 'Other'])
		employmentStatus(inList:['Not working', 'Working'])
		maritalStatus(inList:['Single, never married', 'Married', 'Divorsed', 'Widowed'])
		education(inList:['No formal education', 'Grade (primary) school', 'High school', 'Some university', 'University'])
		countyOfResidence(
			inList:[
				'Bomi',
				'Bong',
				'Gbarpolo',
				'Grand Bassa',
				'Grand Cape Mount',
				'Grand Gedah',
				'Grand Kru',
				'Lofa',
				'Margibi',
				'Maryland',
				'Montserrado',
				'Nimba',
				'River Cess',
				'River Gee',
				'Sinoe',
				'Other'])
		diagnosisPrimary(
			inList:[
				'Major depressive disorder, recurrent',
				'Bipolar disorder, most recent episode depressed',
				'Bipolar disorder, most recent episode manic',
				'Bipolar disorder, most recent episode mixed',
				'Mood disorder NOS',
				'Mood disorder due to medical condition'
				])
		moodDisorder(
			inList:[
				'Full remission',
				'Partial remission',
				'Mild',
				'Moderate',
				'Severe without psychotic features',
				'Severe with psychotic features',
				'Unspecified'])
		anxietyDisorder(
			inList:[
				'Generalized anxiety disorder',
				'Panic disorder with agoraphobia',
				'Panic disorder without agoraphobia',
				'Agoraphobia wihtout history of panic disorder',
				'Specific phobia',
				'Social phobia',
				'Obsessive compulsive disorder',
				'Post-traumatic stress disorder',
				'Acute stress',
				'Anxiety disorder due to general medical condition',
				'Anxiety disorder due to specific medical condition',
				'Anxiety disorder NOS'])
		* --------------------------------------------------------------
		*/
    }
	
	// Basic Information
	String clinicianID = "";
	String locationOfService = "";
	boolean reasonSeekingMentalHealthCare = false;
	boolean reasonOther = false;
	String clinicianTrainingLevel = "";
	String referralSource = "";
	Date dateOfService;
	
	// Patient Demographics and Personal Info
	// Hashed (except for gender)
	// Used to generate unique Patient ID and lookup potential patient matches
	String patientName = ""; // hash of patient name
	String dateOfBirth = ""; // hash of date of birth
	String gender = "";
	String fathersName = ""; // hash of fathers name
	String placeOfBirth = ""; // hash of place of birth
	
	// Patient Demographics
	String age = "";
	String countyOfResidence = "";
	String distanceTraveled = "";
	String maritalStatus = "";
	String education = "";
	String numberOfDaysInLifeRole = "";
	
	// Symptoms and Functioning
	Integer phq = 0;
	Integer gaf = 0;
	Integer cage = 0;
	Integer whoDas = 0;
	Integer euroqol = 0;
	String otherSymptomsScore = 0;
	
	// Diagnosis
	String diagnosisPrimary = "";
	String moodDisorder = "";
	String anxietyDisorder = "";
	String psychoticDisorder = "";
	String somatoformDisorder = "";
	String substanceAbuseDisorder = "";
	String substanceAbuseDisorder2 = "";
	String epilepsy = "";
	String numberOfSeizuresPerMonth = "";
	String epilepticOtherSymptoms = "";
	String otherMedicalCondition = "";
	String secondaryDiagnosis = "";
	
	// Treatment
	boolean fluoxetine = false;
	boolean escitalopram = false;
	boolean sertraline = false;
	boolean amitriptyline = false;
	boolean imipramine = false;
	boolean otherAntidepressant = false;
	boolean haloperidal = false;
	boolean haloperidalDecanoateInjection = false;
	boolean chlorpromazine = false;
	boolean fluphenazine = false;
	boolean fluphenazineDecanoateInjection = false;
	boolean risperidone = false;
	boolean risperidoneConstaInjection = false;
	boolean otherAntipsychotic = false;
	boolean clomipramine = false;
	boolean clonazepam = false;
	boolean diazepam = false;
	boolean lorazepam = false;
	boolean otherSedative = false;
	boolean depakote = false;
	boolean lithium = false;
	boolean carbamazepine = false;
	boolean otherMoodStabilizer = false;
	boolean depakoteAntiepileptic = false;
	boolean carbmazepineAntiepileptic = false;
	boolean phenobarbital = false;
	boolean phenytoin = false;
	boolean otherAntiepileptic = false;
	boolean trihexyphenidyl = false;
	boolean otherAnticholinergic = false;
	boolean counselingIndividual = false;
	boolean counselingGroup = false;
	boolean counselingFamilyPsychoEducational = false;
	boolean counselingFamilyTherapy = false;
	boolean counselingNone = false;
	String individualCounseling = "";
	String familyPsychoEducation = "";
	String medicationsNotAvailable = "";
	
	// Discharge
	boolean followUpCareMedication = false;
	boolean followUpCareCounseling = false;
	String dischargeDisposition = "";
	boolean reportData = false;
}
