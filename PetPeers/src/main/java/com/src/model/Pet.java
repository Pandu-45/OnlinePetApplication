package com.src.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Pet {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	private String pname;
	private String petbreed;
	private int age;
	@ManyToOne
	@JoinColumn(name = "User_id")
	private User user;

	public Pet() {
	}
	
	public Pet(int pid, String pname, String petbreed, int age, User user) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.petbreed = petbreed;
		this.age = age;
		this.user = user;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPetbreed() {
		return petbreed;
	}

	public void setPetbreed(String petbreed) {
		this.petbreed = petbreed;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	

}
