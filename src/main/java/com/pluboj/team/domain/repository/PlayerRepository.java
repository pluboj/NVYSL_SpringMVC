package com.pluboj.team.domain.repository;

import java.util.List;

import com.pluboj.team.domain.Player;

public interface PlayerRepository {
	List<Player> getAllPlayers();
	Player getPlayerByNumber(Integer playerNumber);
}
