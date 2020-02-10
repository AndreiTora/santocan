package com.wirtz.santocan.controller;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.wirtz.santocan.model.animal.Animal;
import com.wirtz.santocan.model.user.User;
import com.wirtz.santocan.service.animal.AnimalService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AnimalController {
	
	@Autowired
	AnimalService animalService;
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	@RequestMapping(value = { "/animals" }, method = RequestMethod.GET)
	public String listAnimals(ModelMap model) {

		List<Animal> animals = animalService.findAllAnimals();
		model.addAttribute("animals", animals);
		model.addAttribute("loggedinuser", getPrincipal());
		return "animals";

	}
	
	
	
	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	@RequestMapping(value = { "animals/new" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		Animal animal = new Animal();
		
		model.addAttribute("animal", animal);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "newanimal";
	}

	/**
	 * Este método guardará el usuario creado si no existe ningún error
	 */

	@RequestMapping(value = { "animals/new" }, method = RequestMethod.POST)
	public String saveUser(@Valid Animal animal, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "newanimal";
		}

		animalService.save(animal);

		model.addAttribute("Exitoso",
				"Animal " + animal.getName() + " registrado correctamente");
		
		model.addAttribute("loggedinuser", getPrincipal());
		// return "success";
		return "animalsuccess";
	}
	
	@RequestMapping(value = { "/edit-animal-{animalId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable Long animalId, ModelMap model) {
		Animal animal = animalService.findById(animalId);
		model.addAttribute("animal", animal);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "newanimal";
	}

	@RequestMapping(value = { "/edit-animal-{animalId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid Animal animal, BindingResult result, ModelMap model, @PathVariable Long animalId) {

		if (result.hasErrors()) {
			return "newanimal";
		}

		animalService.update(animal);

		model.addAttribute("Exitoso",
				"Animal " + animal.getName() + " actualizado correctamente");
		model.addAttribute("loggedinuser", getPrincipal());
		return "animalsuccess";
	}
	
	@RequestMapping(value = { "/delete-animal-{animalId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable Long animalId) {
		animalService.deleteAnimalById(animalId);
		return "redirect:/animals";
	}

}
