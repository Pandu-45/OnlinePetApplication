package com.src.dao;

import java.util.List;

import com.src.model.Pet;
import com.src.model.User;

public interface PetDao {

	String addPet(Pet pet,User user);
	List<Pet> displayPets(User user);
	Pet buyPet(int pid,User user);
	List<Pet> displayPetsAvailable();
}
