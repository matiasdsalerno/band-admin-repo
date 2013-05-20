package ar.com.asambleacristiana

import org.apache.commons.mail.SimpleEmail;

class Reminder {

	String triggerName = "trigger" + id
	Event event
	Date date
	
    static constraints = {
    }
	
	def sendEmail(grailsApplication) {
		SimpleEmail email = new SimpleEmail();
		email.with {
			hostName = grailsApplication.config.mail.hostName
			fromAddress = grailsApplication.config.mail.fromAddress
			subject = "Recordatorio: ${event.name} - ${event.date}"
			smtpPort = grailsApplication.config.mail.smtpPort
			setAuthentication grailsApplication.config.mail.username, grailsApplication.config.mail.password
			message = getMailMessage();
			
		}
	}
	
	String getMailMessage() {
		
	}

}
