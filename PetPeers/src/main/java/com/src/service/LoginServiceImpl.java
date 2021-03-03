package com.src.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.src.dao.LoginDao;
import com.src.model.User;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDaoImpl;
	@Override
	public User validateLogin(User user) {
		return loginDaoImpl.verifyUser(user);
		
	}

}
