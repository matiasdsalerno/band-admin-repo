package ar.com.asambleacristiana



class ScheduleEmailJob {
    static triggers = {
    }

    def execute(JobExecutionContext context) {
        Reminder reminder = context.getProperties()["reminder"]
    }
}
