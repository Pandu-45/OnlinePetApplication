package com.src.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.src.model.User;
@Repository

public class UserRegisterDaoImpl implements UserRegisterDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	@Override
	public String getUserDetails(User user) {

		String message = "";
		Session session = sessionFactory.getCurrentSession();
		String query = "from com.hcl.petpeers.model.User u where u.email=:email  ";
		List<User> exist_User =  session.createQuery(query).setParameter("email", user.getEmail()).list();
		if (exist_User.isEmpty()) {
			session.save(user);
			
			message = "Registered Sucessfully";
			return message;
		}
		message = "User Already Exists and Registration failed";
		return message;
	}

}
