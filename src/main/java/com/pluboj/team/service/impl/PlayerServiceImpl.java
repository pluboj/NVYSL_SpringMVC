package com.pluboj.team.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pluboj.team.domain.Player;
import com.pluboj.team.domain.repository.PlayerRepository;
import com.pluboj.team.service.PlayerService;

@Service
public class PlayerServiceImpl implements PlayerService {
	
	@Autowired
	private PlayerRepository playerRepository;

	@Override
	public List<Player> getAllPlayers() {
		List<Player> players = playerRepository.getAllPlayers(); 
		return players;
	}

}
