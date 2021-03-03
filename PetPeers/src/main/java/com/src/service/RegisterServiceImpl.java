package com.src.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.src.dao.UserRegisterDao;
import com.src.model.User;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	UserRegisterDao userRegisterDaoImpl;
	@Override
	public String RegisterUserDetails(User user) {
		
		return userRegisterDaoImpl.getUserDetails(user);
	}

}
