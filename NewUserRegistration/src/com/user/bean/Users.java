package com.user.bean;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Users {
	private int userId;
	
	@Pattern(regexp="^[a-zA-Z]+$", message="*Must be letters")
	@Size(min=2, message="*Must be 2 or more characters")
	private String firstName;
	@Pattern(regexp="^[a-zA-Z]+$", message="*Must be letters")
	@Size(min=2, message="*Must be 2 or more characters")
	private String lastName;
	
	@NotNull(message="*Please select gender")
	private String Gender;
		
	@Pattern(regexp="^\\d{10}$", message="*Please enter a Canadian phone number")
	private String phoneNumber;
	
	@Pattern(regexp="[-A-Za-z0-9_.%]+@[-A-Za-z0-9_.%]+\\.[A-Za-z]+", message="*Please enter an email address")
	private String email;
	
	

	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
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
