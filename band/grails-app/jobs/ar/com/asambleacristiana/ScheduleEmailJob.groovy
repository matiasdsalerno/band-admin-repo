package ar.com.asambleacristiana

import ar.com.asambleacristiana.Reminder



class ScheduleEmailJob {
    static triggers = {
    }
	
	def concurrent = false

    def execute(context) {
        String reminderId = context.mergedJobDataMap.reminderId
		Reminder reminder = Reminder.get reminderId
		reminder.sendEmail();
    }
}
