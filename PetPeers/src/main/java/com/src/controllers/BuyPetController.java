package com.src.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.src.model.Pet;
import com.src.model.User;
import com.src.service.PetService;

@Controller
public class BuyPetController {

	@Autowired
	public PetService petservice;
	
	@RequestMapping("/buypets")
	public String getBuyPetsPage(Model model,HttpServletResponse response) {
		
		List<Pet> availPets = petservice.displayPetsAvailable();
		model.addAttribute("availPets", availPets);
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0);
		return "buypets";
	}
	
	@RequestMapping("/buypet/{pid}")
	public String getBuyPetPage(@PathVariable int pid,Model model,HttpServletRequest httpServletRequest) {
		String message ="";
		HttpSession session = httpServletRequest.getSession();
		User user = (User) session.getAttribute("validUser");
		Pet pet = petservice.buyPet(pid, user);
		if(pet==null) {
			 message ="Sorry your Purchase Failed..!!";
			model.addAttribute("message",message);
		}
		message="Your purchase is success!! ";
		model.addAttribute("updated_pet",pet);
		model.addAttribute("message",message);
		return "buypet";
		
	}
}
