package com.skilldistillery.larpup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.larpup.data.LarpUpDAO;
import com.skilldistillery.larpup.entities.User;

@RestController
@RequestMapping("user")
public class UserController {

	@Autowired
	private LarpUpDAO dao;

	@RequestMapping(path = {"displayUser.do"}, method = RequestMethod.GET)
	public ModelAndView userDisplay(int userId) {
		ModelAndView mv = new ModelAndView("userDisplay");
		mv.addObject("user", dao.findUserById(userId));
		return mv;
	}
	@RequestMapping(path = {"createUserForm.do"}, method = RequestMethod.GET)
	public ModelAndView creatForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userForm");
		return mv;
	}
	
	@RequestMapping(path = {"createUser.do"}, method = RequestMethod.POST)
	public ModelAndView addUser(User user) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println(user);
		
		mv.addObject("user", dao.addUser(user));
		mv.setViewName("userDisplay");
		
		return mv;
	}
}