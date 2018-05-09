package com.pluboj.team.controllers;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pluboj.team.service.PlayerService;

@Controller
public class PlayerController {
	
	@Autowired
	private PlayerService playerService;
	
	@RequestMapping("/player")
	public String getPlayerByNumber(@RequestParam("id") Integer playerNumber, Model model) {
		model.addAttribute("player", playerService.getPlayerByNumber(playerNumber));
		model.addAttribute("games", new Random().nextInt(10) + 1);
		return "player";
	}

}
