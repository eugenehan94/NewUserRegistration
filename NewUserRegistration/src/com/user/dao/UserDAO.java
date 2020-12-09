package com.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
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

	// Anonymous inner class - gets data from mySQL table
	public List<Users> getUsers() {

		return template.query("SELECT * FROM newuser", new RowMapper<Users>() {

			public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
				Users u = new Users();
				u.setUserId(rs.getInt(1));
				u.setFirstName(rs.getString(2));
				u.setLastName(rs.getString(3));
				u.setGender(rs.getString(4));
				return u;
			}
		});

	}

}
