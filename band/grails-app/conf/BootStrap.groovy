import ar.com.asambleacristiana.Role
import ar.com.asambleacristiana.User
import ar.com.asambleacristiana.UserRole;

class BootStrap {

	def springSecurityService

	def init = { servletContext ->

		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ADMIN_USER') ?: new Role(authority: 'ADMIN_USER').save(failOnError: true)

		def adminUser = User.findByUsername('admin') ?: new User(
				username: 'admin',
				password: springSecurityService.encodePassword('admin'),
				enabled: true).save(failOnError: true)

		if (!adminUser.authorities.contains(adminRole)) {
			UserRole.create adminUser, adminRole
		}
	}
	def destroy = {
		
	}
}
