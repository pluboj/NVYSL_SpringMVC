package com.pluboj.team.domain;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Player implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 600556321150L;
	
	private int playerNumber;
	private String firstName;
	private String lastName;
	private int yearBorn;
	private double height;
	private String position;
	
	public Player() {
		// TODO Auto-generated constructor stub
	}

	public Player(int playerNumber, String firstName, String lastName, int yearBorn, double height, String position) {
		this.playerNumber = playerNumber;
		this.firstName = firstName;
		this.lastName = lastName;
		this.yearBorn = yearBorn;
		this.height = height;
		this.position = position;
	}

	public int getPlayerNumber() {
		return playerNumber;
	}

	public void setPlayerNumber(int playerNumber) {
		this.playerNumber = playerNumber;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getYearBorn() {
		return yearBorn;
	}

	public void setYearBorn(int yearBorn) {
		this.yearBorn = yearBorn;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Player other = (Player) obj;
		if (playerNumber == 0) {
			if (other.playerNumber != 0)
				return false;
		} else if (playerNumber != other.playerNumber)
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		final int prime = 31;
		int result = 1;
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + (int)(playerNumber ^ (playerNumber >>> 32));
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		return result;
	}

	@Override
	public String toString() {
		return "Player [playerNumber=" + playerNumber + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", yearBorn=" + yearBorn + ", height=" + height + ", position=" + position + "]";
	}

}
