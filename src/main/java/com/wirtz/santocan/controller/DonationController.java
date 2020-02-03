package com.wirtz.santocan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class DonationController {
	

	@RequestMapping(value = "/donation", method = RequestMethod.GET)
	public String donacion(ModelMap model) {
		
		return "donation";

	}
}
