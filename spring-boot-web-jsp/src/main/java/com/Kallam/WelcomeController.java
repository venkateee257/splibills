package com.Kallam;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";
	private Map<String, User> userMap = new HashMap<>();
	@RequestMapping(value ="/" )
	//,method = RequestMethod.POST
	public String index(Map<String, Object> model) {
		model.put("message", this.message);
		return "Index";
	}

	@RequestMapping(value ="/Home" ,method = RequestMethod.POST)
	public String goToHome(@ModelAttribute("user") User user,
			BindingResult result, ModelMap model) {
		model.put("message", this.message);
		model.put("firstName", user.getFirstName());
		model.put("lastName", user.getLastName());
		System.out.println("firstname "+ user.getFirstName());
		userMap.put(user.getFirstName(), user);
		return "Home";
	}
	
	@RequestMapping(value ="/Login" ,method = RequestMethod.GET)
	public String gotoLogin(Map<String, Object> model) {
		model.put("message", this.message);
		return "Login";
	}
	
}