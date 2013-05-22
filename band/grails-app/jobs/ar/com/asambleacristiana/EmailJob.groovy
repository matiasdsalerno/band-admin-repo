package ar.com.asambleacristiana

class EmailJob {
	
	def grailsApplication
	
    static triggers = {
      simple repeatInterval: 5000l // execute job once in 5 seconds
    }

    def execute() {
		Reminder.findAll().each {
			if(it.date.before(new Date())) {
				it.sendEmail(grailsApplication)
				it.delete(flush: true)
			}
		}
	}
}