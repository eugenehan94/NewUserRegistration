package com.user.controller;

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
	
	@RequestMapping("/newUser")
	public String redirect(Model m) {
		Users user = new Users();
		m.addAttribute("Users", user);
		return "newUser";
	}

	@RequestMapping("/userSubmit")
	public String submitForm(@ModelAttribute("Users") Users user) {
		dao.save(user);
		return "confirmation";

	}

}
