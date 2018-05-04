package com.pluboj.team.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pluboj.team.domain.Player;

@Controller
public class TeamController {

	@RequestMapping("/displayTeam.htm")
	public String team(Model model) {
		List<Player>players = new ArrayList<>(); 
		Player p1 = new Player(1, "Jimmy", "Long", 2012, 41.5, "Goalkeeper");
		Player p2 = new Player(5, "John", "Madsen", 2011, 41, "Forward");
		Player p3 = new Player(9, "Daniel", "Gaspar", 2011, 40.5, "Defender");
		Player p4 = new Player(3, "Tony", "Morano", 2012, 40, "Defender");
		Player p5 = new Player(12, "Peter", "Hoffenhauser", 2012, 41.5, "Defender");
		Player p6 = new Player(10, "Joe", "Russkin", 2011, 40.5, "Midfielder");
		players.add(p1);
		players.add(p2);
		players.add(p3);
		players.add(p4);
		players.add(p5);
		players.add(p6);
		model.addAttribute("players", players);
		
		return "team";
	}
}
