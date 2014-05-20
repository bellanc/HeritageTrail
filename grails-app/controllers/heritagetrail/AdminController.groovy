package heritagetrail

import org.springframework.web.servlet.ModelAndView

class AdminController {

	def index = {
		def allEvents = Event.findAll()
		println Event.findAll()
		return new ModelAndView("/admin/admin", [ allEvents : allEvents ])
//		render(view: "admin")
	}

	def getProfile() {
		def startAge;
		def endAge;
		println(params.ages.getClass())
		if(params.ages=='0-18'){
			startAge = 0;
			endAge = 18;
		}else if(params.ages == '19-50'){
			startAge = 19
			endAge = 50
		}else if(params.ages=='50+'){
			startAge = 51
			endAge = 110
		}else if(params.ages =='All'){
			startAge = 0
			endAge = 110
		}
		def userResultsByUsername = User.findAllByLoginIlikeAndAgeBetween("${params.value}%",startAge,endAge,[sort:'age'])
		def userResultsByLastName = User.findAllByLastNameIlikeAndAgeBetween("${params.value}%",startAge,endAge,[sort:'age'])
		def userResultsByFirstName = User.findAllByFirstNameIlikeAndAgeBetween("${params.value}%",startAge,endAge,[sort:'age'])
		
		userResultsByUsername.addAll(userResultsByLastName)
		userResultsByUsername.addAll(userResultsByFirstName)
		def user = userResultsByUsername.unique()
		println(user[0].getClass())
		render(view:"admin", model:[user:user])
		
	}
	
	def createEvent(){
		
	}
	
}
