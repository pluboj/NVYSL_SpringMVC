package com.pluboj.team.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {

	@RequestMapping("processContact")
	public String processContct(@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("phone") String phone,
			@RequestParam("message") String msg,
			Model model) {
		model.addAttribute("name", name );
		model.addAttribute("email", email );
		model.addAttribute("phone", phone );
		model.addAttribute("message", msg );
		
		return "processContact";
	}
}
