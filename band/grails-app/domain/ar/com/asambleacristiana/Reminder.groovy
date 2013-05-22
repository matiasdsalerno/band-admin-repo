package ar.com.asambleacristiana

import org.apache.commons.mail.SimpleEmail;

class Reminder {

	Event event
	Date date
	
    static constraints = {
    }
	
	def sendEmail(grailsApplication) {
		SimpleEmail email = new SimpleEmail();
		email.with {
			
			hostName = grailsApplication.config.mail.hostName
			setFrom(grailsApplication.config.mail.fromAddress)
			smtpPort = new Integer(grailsApplication.config.mail.smtpPort)
			subject = "Recordatorio: ${event.name} - ${event.date}"
			setMsg(getMailMessage())
			setAuthentication grailsApplication.config.mail.username, grailsApplication.config.mail.password
			addTo "matias.d.salerno@gmail.com"
			send
		}
	}
	
	String getMailMessage() {
		"canciones: ${event.songs}"
	}

}
