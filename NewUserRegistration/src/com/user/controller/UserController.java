package com.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.bean.Users;
import com.user.dao.UserDAO;

@Controller
public class UserController {

	@Autowired
	UserDAO dao; //inject the dao from the xml file
	
	//This creates the object when user selects new users on index.jsp
	@RequestMapping("/newUser")
	public String redirect(Model m) {
		Users user = new Users();
		m.addAttribute("Users", user);
		return "newUser";
	}

	// When the submit button is pushed on newUser.jsp
	@RequestMapping("/userSubmit")
	public String submitForm(@ModelAttribute("Users") Users user) {
		dao.save(user);
		return "confirmation";

	}
	//Returns the list of users in the mySQL database
	@RequestMapping("/viewUser")
	public String viewUser(Model m) {
		List<Users> list = dao.getUsers();
		m.addAttribute("list", list);
		return "viewUsers";
				
	}

}
