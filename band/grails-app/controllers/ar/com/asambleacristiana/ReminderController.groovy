package ar.com.asambleacristiana

import org.quartz.JobDetail;
import org.quartz.Trigger
import org.quartz.core.QuartzScheduler;
import org.quartz.impl.JobDetailImpl
import org.quartz.impl.triggers.SimpleTriggerImpl
import org.springframework.dao.DataIntegrityViolationException

/**
 * ReminderController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ReminderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def quartzScheduler
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [reminderInstanceList: Reminder.list(params), reminderInstanceTotal: Reminder.count()]
    }

    def create() {
        [reminderInstance: new Reminder(params)]
    }

    def save() {
        def reminderInstance = new Reminder(params)
        if (!reminderInstance.save(flush: true)) {
			render(view: "create", model: [reminderInstance: reminderInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'reminder.label', default: 'Reminder'), reminderInstance.id])
        redirect(action: "show", id: reminderInstance.id)
    }

    def show() {
        def reminderInstance = Reminder.get(params.id)
        if (!reminderInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'reminder.label', default: 'Reminder'), params.id])
            redirect(action: "list")
            return
        }

        [reminderInstance: reminderInstance]
    }

    def edit() {
        def reminderInstance = Reminder.get(params.id)
        if (!reminderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reminder.label', default: 'Reminder'), params.id])
            redirect(action: "list")
            return
        }

        [reminderInstance: reminderInstance]
    }

    def update() {
        def reminderInstance = Reminder.get(params.id)
        if (!reminderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reminder.label', default: 'Reminder'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (reminderInstance.version > version) {
                reminderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'reminder.label', default: 'Reminder')] as Object[],
                          "Another user has updated this Reminder while you were editing")
                render(view: "edit", model: [reminderInstance: reminderInstance])
                return
            }
        }

        reminderInstance.properties = params

        if (!reminderInstance.save(flush: true)) {
            render(view: "edit", model: [reminderInstance: reminderInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'reminder.label', default: 'Reminder'), reminderInstance.id])
        redirect(action: "show", id: reminderInstance.id)
    }

    def delete() {
        def reminderInstance = Reminder.get(params.id)
        if (!reminderInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'reminder.label', default: 'Reminder'), params.id])
            redirect(action: "list")
            return
        }

        try {
            reminderInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'reminder.label', default: 'Reminder'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'reminder.label', default: 'Reminder'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
