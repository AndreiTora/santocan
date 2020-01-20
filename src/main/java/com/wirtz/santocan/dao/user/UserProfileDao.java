package com.wirtz.santocan.dao.user;

import java.util.List;

import com.wirtz.santocan.model.user.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
