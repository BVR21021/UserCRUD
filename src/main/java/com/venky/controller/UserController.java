package com.venky.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.venky.model.Users;
import com.venky.repo.UserRepo;
@Controller
public class UserController {

	@Autowired
	private UserRepo repo;
	@RequestMapping(value="/")
	public String home() {
		return"home";
	}
	@RequestMapping("/req1")
	public String register() {
		return "reg";
	}
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	public String success(Users user,Model m) {
		Users u1=repo.save(user);
		return "success";
	}
	@RequestMapping(value="/views",method=RequestMethod.GET)
	public String view(Model m) {
	m.addAttribute("user",repo.findAll());
		return "viewuser";
	}
	@RequestMapping(value="/edit/{id}")
	public String edit(@PathVariable Integer id,Model m) {
		Users user=repo.findById(id).get();
		m.addAttribute("command",user);
		return"/edituser";
	}
	@RequestMapping(value="/editusers",method=RequestMethod.POST)
	public String editsave(@RequestParam Integer id,@RequestParam String name,@RequestParam String password,@RequestParam String email,@RequestParam String gender,@RequestParam String country,Users user,Model m) {
		repo.save(user);
		return"redirect:/viewuser";
	}
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable Integer id)
	{
		repo.deleteById(id);
		return "redirect:/viewEmployee"; 
	}
	
	
}
