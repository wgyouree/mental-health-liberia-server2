package edu.gatech.mentalhealthliberia

import java.io.BufferedReader;
import java.io.InputStreamReader;

import grails.converters.*
import org.codehaus.groovy.grails.web.json.*; // package containing JSONObject, JSONArray,...

import org.apache.shiro.SecurityUtils
import org.apache.shiro.authc.AuthenticationException
import org.apache.shiro.authc.UsernamePasswordToken

class PatientEncounterFormController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def exportService
    def grailsApplication  //inject GrailsApplication

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)

		if(params?.extension) {
			def format = params.extension
			if (params.extension == "xls") {
				format = "excel"
			}
			response.contentType = grailsApplication.config.grails.mime.types[format]
			response.setHeader("Content-disposition", "attachment; filename=patientEncounterForm.${params.extension}")

			exportService.export(format, response.outputStream, PatientEncounterForm.list(), [:], [:])
		}

        [patientEncounterFormInstanceList: PatientEncounterForm.list(params), patientEncounterFormInstanceTotal: PatientEncounterForm.count()]
    }

    def create = {
        def patientEncounterFormInstance = new PatientEncounterForm()
        patientEncounterFormInstance.properties = params
        return [patientEncounterFormInstance: patientEncounterFormInstance]
    }

    def save = {
        def patientEncounterFormInstance = new PatientEncounterForm(params)
        if (patientEncounterFormInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), patientEncounterFormInstance.id])}"
            redirect(action: "show", id: patientEncounterFormInstance.id)
        }
        else {
            render(view: "create", model: [patientEncounterFormInstance: patientEncounterFormInstance])
        }
    }

    def show = {
        def patientEncounterFormInstance = PatientEncounterForm.get(params.id)
        if (!patientEncounterFormInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), params.id])}"
            redirect(action: "list")
        }
        else {
            [patientEncounterFormInstance: patientEncounterFormInstance]
        }
    }

    def edit = {
        def patientEncounterFormInstance = PatientEncounterForm.get(params.id)
        if (!patientEncounterFormInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [patientEncounterFormInstance: patientEncounterFormInstance]
        }
    }

    def update = {
        def patientEncounterFormInstance = PatientEncounterForm.get(params.id)
        if (patientEncounterFormInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (patientEncounterFormInstance.version > version) {
                    
                    patientEncounterFormInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm')] as Object[], "Another user has updated this PatientEncounterForm while you were editing")
                    render(view: "edit", model: [patientEncounterFormInstance: patientEncounterFormInstance])
                    return
                }
            }
            patientEncounterFormInstance.properties = params
            if (!patientEncounterFormInstance.hasErrors() && patientEncounterFormInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), patientEncounterFormInstance.id])}"
                redirect(action: "show", id: patientEncounterFormInstance.id)
            }
            else {
                render(view: "edit", model: [patientEncounterFormInstance: patientEncounterFormInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def patientEncounterFormInstance = PatientEncounterForm.get(params.id)
        if (patientEncounterFormInstance) {
            try {
                patientEncounterFormInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'patientEncounterForm.label', default: 'PatientEncounterForm'), params.id])}"
            redirect(action: "list")//http://localhost:8081/MentalHealthLiberia/patientEncounterForm/list
        }
    }
	
	def upload = {
		log.error "upload fired"
		if (request.method == "POST") {
			log.error params.data;
	
			def authToken = new UsernamePasswordToken(params.username, params.password as String)
			try{
				// Perform the actual login. An AuthenticationException
				// will be thrown if the username is unrecognised or the
				// password is incorrect.
				SecurityUtils.subject.login(authToken)
			}
			catch (AuthenticationException ex){
				// Authentication failed, so display the appropriate message
				// on the login page.
				render(status: 403)
			}
			
			def obj = JSON.parse(params.data)
			obj.dateOfService = new Date(obj.dateOfService)
			PatientEncounterForm patientEncounterForm = new PatientEncounterForm(obj);
			
			if (patientEncounterForm.validate() && patientEncounterForm.save()) {
				render(status: 200, text: Version.get(1).num, contentType: 'text/plain', encoding: 'UTF-8');
			} else {
				log.error(patientEncounterForm.errors)
				render(status: 503, text: 'Failed to save form');
			}
		} else {
			render(status: 503, text: 'Bad request');
		}
	}
	
	def analyze = {
		
	}
	
	def generateReport = {
		// fetch results from database
		def results = [];
		def c = PatientEncounterForm.createCriteria();
		switch (params.category) {
			case "all":
				// all forms from start to end date
				results = c {
					between ("dateOfService", params.startDate, params.endDate)
				}
				break;
			case "clinician":
				// all forms by clinician from start to end date
				results = c {
					between ("dateOfService", params.startDate, params.endDate)
					eq ("clinicianID", params.clincianID)
				}
				break;
			case "county":
				// all forms from country from start to end date
				results = c {
					between ("dateOfService", params.startDate, params.endDate)
					eq ("countyOfResidence", params.county)
				}
				break;
			default:
				log.error "Unrecognized Category in report generation: " + params.category;
			break;
		}
		
		// format results for display: aggregate results
		def phq = new HashMap<Date, HashMap<String, Integer>>();
		def gaf = new HashMap<Date, HashMap<String, Integer>>();
		def cage = new HashMap<Date, HashMap<String, Integer>>();
		results.each {
			def date = it.dateOfService
			
			// PHQ
			if (it.phq != null) {
				if (phq.get(date) == null) {
					phq.put(date, [num: 0, val: 0])
				}
				phq.get(date).num = phq.get(date).num + 1;
				phq.get(date).val = phq.get(date).val + it.phq;
			}
			
			// GAF
			if (it.gaf != null) {
				if (gaf.get(date) == null) {
					gaf.put(date, [num: 0, val: 0])
				}
				gaf.get(date).num = gaf.get(date).num + 1;
				gaf.get(date).val = gaf.get(date).val + it.gaf;
		    }
			
			// CAGE
			if (it.cage != null) {
				if (cage.get(date) == null) {
					cage.put(date, [num: 0, val: 0])
				}
				cage.get(date).num = cage.get(date).num + 1;
				cage.get(date).val = cage.get(date).val + it.cage;
			}
		}
		
		def timelineData = new HashMap<Date, HashMap<String, Integer>>();
		phq.each {
			if (timelineData.get(it.key) == null) {
				timelineData.put(it.key, [phq: 0])
			}
			timelineData.get(it.key).phq = phq.get(it.key).val / phq.get(it.key).num;
		}
		gaf.each {
			if (timelineData.get(it.key) == null) {
				timelineData.put(it.key, [gaf: 0])
			}
			timelineData.get(it.key).gaf = gaf.get(it.key).val / gaf.get(it.key).num;
		}
		cage.each {
			if (timelineData.get(it.key) == null) {
				timelineData.put(it.key, [cage: 0])
			}
			timelineData.get(it.key).cage = cage.get(it.key).val / cage.get(it.key).num;
		}
		
		// convert timeline data to arrays
		def timelineArray = []
		int i = 0
		timelineData.each {
			timelineArray[i++] = [it.key, it.value.phq, it.value.gaf, it.value.cage]
		}
		
		render timelineArray as JSON
	}
	
	def download = {
		byte[] latestClient = fetchLatestClient()
		response.contentType = "application/octet-stream"
		response.setHeader("Content-disposition", "attachment; filename=MHL-Client.zip")
		response.outputStream << latestClient
	}
	
	private byte[] fetchLatestClient() {
		File file = new File("/var/lib/tomcat6/data/dist.zip")
		InputStream is = new FileInputStream(file)
		long length = file.length()
		
		byte[] bytes = new byte[(int)length];
		
		// Read in the bytes
		int offset = 0;
		int numRead = 0;
		while (offset < bytes.length
			   && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
			offset += numRead;
		}
	
		// Ensure all the bytes have been read in
		if (offset < bytes.length) {
			log.error "Could not completely read file " + file.getName();
		}
	
		// Close the input stream and return bytes
		is.close();
		return bytes;
	}
	
	def uploadLatestClient = {
		def versionNum = params.versionNum
		def uploadedFile = request.getFile('payload')
		if (!uploadedFile.empty) {
			File file = new File("data/dist.zip")
			if (file.exists()) {
				file.delete()
			}
			uploadedFile.transferTo(new File("/var/lib/tomcat6/data/dist.zip"))
			
			// update version number
			def versionObj = Version.get(1)
			versionObj.num = Integer.parseInt(versionNum)
			versionObj.save()
			
			flash.message = "File uploaded successfully"
		} else {
			flash.message = "File upload failed"
		}
		redirect(action: "list")
	}
}
