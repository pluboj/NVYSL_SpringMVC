package com.pluboj.team.domain.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.pluboj.team.domain.Player;
import com.pluboj.team.domain.repository.PlayerRepository;

@Repository
public class InMemoryPlayerRepository implements PlayerRepository {
	
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	@Override
	public List<Player> getAllPlayers() {
		Map<String, Object>params = new HashMap<>();
		List<Player>result = jdbcTemplate.query("SELECT * FROM PLAYERS", params, new PlayerMapper()); 
		
		return result;
	}
	
	private static final class PlayerMapper implements RowMapper<Player> {

		@Override
		public Player mapRow(ResultSet rs, int rowNum) throws SQLException {
			
				Player player = new Player();
				player.setPlayerNumber(rs.getInt("PLAYER_NUMBER"));
				player.setFirstName(rs.getString("FIRST_NAME"));
				player.setLastName(rs.getString("LAST_NAME"));
				player.setYearBorn(rs.getInt("YEAR_BORN"));
				player.setHeight(rs.getDouble("HEIGHT"));
				player.setPosition(rs.getString("POSITION"));
				return player;
			
		}	
	}

	@Override
	public Player getPlayerByNumber(Integer playerNumber) {
		String SQL = "SELECT * FROM PLAYERS WHERE PLAYER_NUMBER =" + playerNumber;
		Map<String, Object> params = new HashMap<>();
		params.put("playerNumber", params);
		try {
			return jdbcTemplate.queryForObject(SQL, params, new PlayerMapper());
		} catch(EmptyResultDataAccessException erdae) {
			return null;
		}
	}

}
