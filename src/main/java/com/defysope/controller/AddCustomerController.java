package com.defysope.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddCustomerController {
	
	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public ModelAndView index(@ModelAttribute("model") ModelMap model) {
        System.out.println("Controller for Customer");
		return new ModelAndView("addCustomer", model);
	}

}
