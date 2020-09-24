package com.hand.ssm.dao;

import java.util.List;

import com.hand.ssm.dto.User;

public interface UserDao {
	User getUserByEmail(String email);
	User getUserById(long id);
	void editName(User user);
	void addUser(User user);
	void editUser(User user);
	List<User> getUserList();
	List<User> searchUser(String query);
	void editpwd(User user);
}
