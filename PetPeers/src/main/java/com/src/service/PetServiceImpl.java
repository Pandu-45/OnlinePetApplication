package com.src.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.src.dao.PetDao;
import com.src.model.Pet;
import com.src.model.User;

@Service
public class PetServiceImpl implements PetService {

	@Autowired
	PetDao petdao;
	
	@Override
	public String addPet(Pet pet, User user) {
		
		return petdao.addPet(pet, user);
	}

	@Override
	public List<Pet> displayPets(User user) {
		// TODO Auto-generated method stub
		return petdao.displayPets(user);
	}

	@Override
	public Pet buyPet(int pid, User user) {
		
		return petdao.buyPet(pid, user);
	}

	@Override
	public List<Pet> displayPetsAvailable() {
		
		return petdao.displayPetsAvailable();
	}

}
