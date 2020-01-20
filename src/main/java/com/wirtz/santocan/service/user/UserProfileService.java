package com.wirtz.santocan.service.user;

import java.util.List;

import com.wirtz.santocan.model.user.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
