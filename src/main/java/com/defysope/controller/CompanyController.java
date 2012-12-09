package com.defysope.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.Country;
import com.defysope.model.State;
import com.defysope.service.CompanySettingsManager;
import com.defysope.service.impl.MasterService;



@Controller
public class CompanyController {
	
	@Autowired
	private CompanySettingsManager companySettingsManager;
	
	@Autowired
	private MasterService masterService;
	
	@RequestMapping(value = "/addCompany", method = RequestMethod.GET)
	public ModelAndView index(@ModelAttribute("model") ModelMap model) {
		model.put("countryList", masterService.getObjects(State.class));
		return new ModelAndView("addCompany", model);
	}

}
