import org.biohackables.Role
import org.biohackables.User
import org.biohackables.UserRole
import org.biohackables.Tag

class BootStrap {

	def init = { servletContext ->
		if(Role.list().size() == 0) {
			new Role(authority: 'ROLE_ADMIN').save(flush: true)
			new Role(authority: 'ROLE_USER').save(flush: true)
		}

		if(User.count() == 0){
			def newAdmin = new User(username: 'admin', enabled: true, password: '4321').save(flush: true)
			def newUser = new User(username: 'user', enabled: true, password: '1234').save(flush: true)

			UserRole.create newAdmin, Role.findByAuthority('ROLE_ADMIN'), true
			UserRole.create newUser, Role.findByAuthority('ROLE_USER'), true

			assert User.count() == 2
			assert Role.count() == 2
		}
		def destroy = {
		}
		
		//Create Default Tags
		[
			'Physics','Chemistry',
			'Ecology','Oceanography',
			'Geology','Meteorology',
			'Biology','Zoology',
			'Human Biology','Botany',
			'Mathematics','Computer Science',
			'Electronics'
		].each {
			new Tag( name: it ).save( flush: true ) 
		}
	}	
}