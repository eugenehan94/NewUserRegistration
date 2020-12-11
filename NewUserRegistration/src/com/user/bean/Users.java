package com.user.bean;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Users {
	private int userId;
	
	@Size(min=2, message="Must be 2 or more characters")
	private String firstName;
	@Size(min=2, message="Must be 2 or more characters")
	private String lastName;
	@NotNull(message="Please select gender")
	private String Gender;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	
	
	
}
