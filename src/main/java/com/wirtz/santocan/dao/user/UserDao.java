package com.wirtz.santocan.dao.user;

import java.util.List;

import com.wirtz.santocan.model.user.User;

public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
	void save(User user);
	
	void deleteBySSO(String sso);
	
	List<User> findAllUsers();

}

