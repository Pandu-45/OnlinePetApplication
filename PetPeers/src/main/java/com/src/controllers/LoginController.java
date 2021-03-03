package com.src.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.src.dao.LoginDao;
import com.src.dao.UserRegisterDao;
import com.src.model.User;
import com.src.service.LoginService;
import com.src.service.RegisterService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginServiceImpl;
	@Autowired
	RegisterService RegisterServiceImpl;

	@RequestMapping("/login")
	public String getLoginPage(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "login";
	}

	@RequestMapping("/register")
	public String getRegisterPage(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "register";
	}

	@RequestMapping("/processregister")
	public String register(@Validated @ModelAttribute("user") User user, BindingResult result,
			RedirectAttributes redirectAttributes, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("message", "Details must be proper");
			System.out.println("worngly registerd ");
			return "register";
		} else {
			String message = RegisterServiceImpl.RegisterUserDetails(user);
			if (message.equals("Registered Sucessfully")) {
				redirectAttributes.addFlashAttribute("message", "Sucessfully Registered");
				System.out.println("registerd sucess");
				return "redirect:/login";

			} else {
				model.addAttribute("message", "User already exsists Please login");
				return "register";
			}

		}
	}

	@RequestMapping("/processlogin")
	public String getProfilepage(@Validated @ModelAttribute("user") User user, BindingResult result,
			HttpServletRequest request, Model model, HttpServletResponse response) {

		User validUser = loginServiceImpl.validateLogin(user);
		if (validUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("validUser", validUser);
			model.addAttribute("validUser", session.getAttribute("validUser"));
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
			response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
			response.setDateHeader("Expires", 0); // Proxies
			return "profile";
		}

		model.addAttribute("message", "invalid credentials");
		return "login";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, RedirectAttributes redirectAttributes, Model model,
			HttpServletResponse response) {

		HttpSession session = request.getSession(false);
		session.invalidate();
		model.addAttribute("validUser", null);
		redirectAttributes.addFlashAttribute("message", "you are sucessfully logged out");
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		return "redirect:/";
	}

	@RequestMapping("/")
	public String homePage(HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
		return "home";
	}

}
