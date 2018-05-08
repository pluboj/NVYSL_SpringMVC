package com.pluboj.team.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pluboj.team.service.PlayerService;

@Controller
public class HomeController {
	
	@Autowired
	private PlayerService playerService;

	@RequestMapping("/")
	public String welcome(Model model) {
		return "index";
	}
	
	@RequestMapping("/contact")
	public String contact(Model model) {
		return "contact";
	}
	
	@RequestMapping("/search")
	public String search(Model model) {
		return "search";
	}
	
	@RequestMapping("/displayTeam")
	public String team(Model model) {
		model.addAttribute("players", playerService.getAllPlayers());
		
		return "team";
	}
}
