package com.wirtz.santocan.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.wirtz.santocan.model.user.UserProfile;
import com.wirtz.santocan.service.user.UserProfileService;
/**
 * Una clase convertidor utilizada en las vistas para asignar identificadores a objetos de perfil de usuario reales.
 */
@Component
public class RoleToUserProfileConverter implements Converter<Object, UserProfile>{

	static final Logger logger = LoggerFactory.getLogger(RoleToUserProfileConverter.class);
	
	@Autowired
	UserProfileService userProfileService;

	/**
	 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
	 */
	public UserProfile convert(Object element) {
		Integer id = Integer.parseInt((String)element);
		UserProfile profile= userProfileService.findById(id);
		logger.info("Profile : {}",profile);
		return profile;
	}
	
}