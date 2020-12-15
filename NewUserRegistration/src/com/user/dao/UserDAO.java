package com.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.user.bean.Users;

public class UserDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Users u) {
		String sql = "INSERT into newuser(firstName, lastName, Gender, phoneNumber, email) values('" + u.getFirstName()
				+ "', '" + u.getLastName() + "', '" + u.getGender() + "', '" + u.getPhoneNumber() + "', '"
				+ u.getEmail() + "')";
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
				u.setPhoneNumber(rs.getString(5));
				u.setEmail(rs.getString(6));
				return u;
			}
		});

	}

	public int delete(int id) {
		String sql = "delete from newuser where userId=" + id + "";
		return template.update(sql);
	}

	public Users getUserById(int userId) {
		String sql = "select * from newuser where userId=?";
		return template.queryForObject(sql, new Object[] { userId }, new BeanPropertyRowMapper<Users>(Users.class));
	}

	public int update(Users user) {
		String sql = "update newuser set firstName='" + user.getFirstName() + "', lastName='" + user.getLastName()
				+ "', Gender='" + user.getGender() + "', phoneNumber='" + user.getPhoneNumber() + "', email='"
				+ user.getEmail() + "' where userId=" + user.getUserId() + "";
		return template.update(sql);
	}

}
