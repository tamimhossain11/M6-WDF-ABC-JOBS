package com.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mvc.dao.ApplicationDAO;

import com.spring.mvc.model.User;

@Controller
public class ApplicationController {

	private ApplicationContext context;
	@Autowired
	private ApplicationDAO applicationDAO;

	@RequestMapping(value = "/resetPass", method = RequestMethod.POST)
	public String edit(@ModelAttribute("bean") User user, Model model) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		ApplicationDAO obj = context.getBean("dao", ApplicationDAO.class);
		List list = obj.resetPassword(user);
		model.addAttribute("data", list);
		model.addAttribute("reset", " Reset Password Successful");
		return "login";

	}

	@RequestMapping("/edit/{userId}")
	public String updateUserForm(@PathVariable("userId") Long uId, Model model) {
		User user = this.applicationDAO.getUser(uId);
		model.addAttribute("user", user);
		return "editprofile";
	}

	// for update profile
	@RequestMapping(value = "edit/update", method = RequestMethod.POST)
	public String updateUser(@RequestParam("id") Long id, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("contact") String contact)
			{
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setEmail(email);
		user.setContact(contact);

		applicationDAO.updateprofile(user);
		return "editprofile";// will come edit profile page

	}

	@RequestMapping("/find")
	public String search(Model model) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		User user = context.getBean("argon", User.class);
		model.addAttribute("bean", user);
		return "search";
	}

	@RequestMapping(value = "/searchview", method = RequestMethod.GET)
	public String searchView(@ModelAttribute("bean") User user, Model model) {
		return "search";
	}

	@RequestMapping(value = "/searchUser", method = RequestMethod.POST)
	public String searchUsrs(@ModelAttribute("bean") User user, Model model) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		ApplicationDAO obj = context.getBean("dao", ApplicationDAO.class);

		List list = obj.search(user);
		if (!list.isEmpty()) {
			model.addAttribute("data", list);
		} else {

			model.addAttribute("msg", "User Not found");
		}
		return "searchUser";
	}

	@RequestMapping("searchUser")
	public String searchUser(Model model, @ModelAttribute("bean") User user) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");

		ApplicationDAO obj = context.getBean("dao", ApplicationDAO.class);
		List<User> list = obj.display();

		model.addAttribute("data", list);

		return "searchUser";

	}
	@RequestMapping("viewUser")
	public String viewUser(Model model, @ModelAttribute("bean") User user) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");

		ApplicationDAO obj = context.getBean("dao", ApplicationDAO.class);
		List<User> list = obj.display();

		model.addAttribute("data", list);

		return "viewUser";

	}

	@RequestMapping("/viewProfile/{userId}")
	public String userProfilesearch(@PathVariable("userId") Long userId, Model model) {

		User user = this.applicationDAO.getUser(userId);
		model.addAttribute("user", user);
		return "viewProfile";

	}

	@RequestMapping("admindash")
	public String admindasdisplay(Model model, @ModelAttribute("bean") User user) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");

		ApplicationDAO obj = context.getBean("dao", ApplicationDAO.class);
		List<User> list = obj.display();

		model.addAttribute("data", list);

		return "admindash";

	}

	@RequestMapping("/findadmin")
	public String adminsearch(Model model) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		User user = context.getBean("argon", User.class);
		model.addAttribute("bean", user);
		return "admindash";
	}

	@RequestMapping(value = "/adminsearchview", method = RequestMethod.GET)
	public String adminsearchView(@ModelAttribute("bean") User user, Model model) {
		return "admindash";
	}
	@RequestMapping(value = "/adminsearchUsrs", method = RequestMethod.POST)
	public String adminsearchUsrs(@ModelAttribute("bean") User user, Model model) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		ApplicationDAO obj = context.getBean("dao", ApplicationDAO.class);

		List list = obj.search(user);
		if (!list.isEmpty()) {
			model.addAttribute("data", list);
		} else {

			model.addAttribute("msg", "User Not found");
		}
		return "admindash";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String adminedit(@ModelAttribute("bean") User user, Model model) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		ApplicationDAO obj = context.getBean("dao",ApplicationDAO.class);
		List list = obj.update(user);
		model.addAttribute("data", list);
		model.addAttribute("msg", " Record update succesfullysuccessfully");
		return "redirect:/login";

	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String adminedelete(@ModelAttribute("bean") User user, Model model) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		ApplicationDAO obj = context.getBean("dao",ApplicationDAO.class);
		List list = obj.delete(user);
		model.addAttribute("data", list);
		model.addAttribute("msg", " Record deleted succesfullysuccessfully");
		return "viewUser";

	}
	
	@RequestMapping("searchUserForAdmin")
	public String searchUsers(Model model, @ModelAttribute("bean") User user) {
		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");

		ApplicationDAO obj = context.getBean("dao", ApplicationDAO.class);
		List<User> list = obj.display();

		model.addAttribute("data", list);

		return "searchUserForAdmin";

	}
	@RequestMapping("/viewProfileForAdmin/{userId}")
	public String userProfileForAdminsearch(@PathVariable("userId") Long userId, Model model) {

		User user = this.applicationDAO.getUser(userId);
		model.addAttribute("user", user);
		return "viewProfileForAdmin";

	}
	@RequestMapping("/chat/{userId}")
	public String userChat(@PathVariable("userId") Long userId, Model model) {

		User user = this.applicationDAO.getUser(userId);
		model.addAttribute("user", user);
		return "Chat";
	}
}
