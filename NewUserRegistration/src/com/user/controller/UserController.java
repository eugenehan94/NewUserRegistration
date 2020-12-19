package com.user.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.bean.Users;
import com.user.dao.UserDAO;

@Controller
public class UserController {

	@Autowired
	UserDAO dao; // inject the dao from the xml file

	// This creates the object when user selects new users on index.jsp
	@RequestMapping("/newUser")
	public String redirect(Model m) {
		Users user = new Users();
		m.addAttribute("Users", user);
		return "newUser";
	}

	// When the submit button is pushed on newUser.jsp
	@RequestMapping("/userSubmit")
	public String submitForm(@Valid @ModelAttribute("Users") Users user, BindingResult br) {

		if (br.hasErrors()) {
			return "newUser";
		} else {
			dao.save(user);
			return "redirect:newUser";
		}
	}

	// Returns the list of users in the mySQL database
	@RequestMapping("/viewUser")
	public String viewUser(Model m) {
		List<Users> list = dao.getUsers();
		m.addAttribute("list", list);
		return "viewUsers";

	}

	/* Deletes the user */
	@RequestMapping(value = "/deleteUser/{userId}", method = RequestMethod.GET)
	public String delete(@PathVariable int userId) {
		dao.delete(userId);
		return "redirect:/viewUser";
	}

	@RequestMapping(value = "/editUser/{userId}")
	public String edit(@PathVariable int userId, Model m) {
		Users user = dao.getUserById(userId);
		m.addAttribute("command", user);
		return "userEditForm";

	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("user") Users user) {
		dao.update(user);
		return "redirect:/viewUser";
	}

	@RequestMapping(value = "/editUser/cancelEdit")
	public String cancelEdit() {
		return "redirect:/viewUser";
	}

	@RequestMapping("/viewExistingUser")
	public String viewExistingUser () {
		return "redirect:/viewUser";
	}
	@RequestMapping("/enterNewUser")
	public String enterNewUser() {
		return "redirect:/newUser";
	}
	
}
