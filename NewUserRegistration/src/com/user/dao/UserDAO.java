package com.user.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.user.bean.Users;

public class UserDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Users u) {
		String sql = "INSERT into newuser(firstName, lastName, Gender) values('" + u.getFirstName() + "', '"
				+ u.getLastName() + "', '" + u.getGender() + "')";
		return template.update(sql);
	}

}
