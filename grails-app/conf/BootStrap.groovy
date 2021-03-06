import heritagetrail.Admin
import heritagetrail.Event
import heritagetrail.User

class BootStrap {

    def init = { servletContext ->

		def defaultAdmin = new User(firstName:"Site", lastName:"Admin",login:"admin", password:"password",password2:"password",email:"blank@blank.com", age: 0,role: "admin", securityAnswer:'password', question:'cats?')
		defaultAdmin.save()

		def defaultUser = new User(firstName:"Joe", lastName:"Schmo",login:"user", password:"password",password2:"password",email:"user@blank.com", age: 25, securityAnswer:'password', question:'cats?' )
		defaultUser.save()

		def defaultUser2 = new User(firstName:"Joe1", lastName:"Schmo1",login:"user2", password:"password",password2:"password",email:"user2@blank.com", age: 25, securityAnswer:'password', question:'cats?' )
		defaultUser.save()
		
		def currentEvent = new Event(title:"Trek the Trail: Memorial Day Event",description:"Get fit on Wheeling's Heritage trail this summer!",currentEvent:true)
		currentEvent.save()

		def testEvent = new Event(title:"Test Title",description:"Test Description")
		testEvent.save()
    }	
	
    def destroy = {
    }
}
