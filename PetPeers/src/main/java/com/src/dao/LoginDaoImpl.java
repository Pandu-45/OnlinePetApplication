package com.src.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.src.model.User;
@Repository
@Transactional
public class LoginDaoImpl implements LoginDao{

	
	@Autowired
	SessionFactory factory;
	
	@Override
	public User verifyUser(User user) {
		
		Session session = factory.getCurrentSession();
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		String query="from com.hcl.petpeers.model.User u where u.email=:email and u.password=:password";
		User verifiedUser = (User) session.createQuery(query).setParameter("email", user.getEmail()).setParameter("password", user.getPassword()).uniqueResult();
		if(verifiedUser!=null) {
			System.out.println(verifiedUser.getEmail());
			return verifiedUser;
		}else {
		return null;

}}}
