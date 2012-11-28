package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.modal.Company;
import com.defysope.modal.Role;
import com.defysope.service.CompanySettingsManager;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanySettingsManager companySettingsManager;
	
	
	@RequestMapping(value = "/addCompany", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("compList", companySettingsManager.getCompany());
		return new ModelAndView("addCompany", model);
	}

	@RequestMapping(value = "/saveCompany", method = RequestMethod.POST)
	public @ResponseBody
	Object addCompany(HttpServletRequest request, @ModelAttribute("comp") Company comp) {
		Company savedCompany = companySettingsManager.saveCompany(comp);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedCompany", savedCompany);
		return model;

	}

	@RequestMapping(value = "/deleteCompany", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteCompany(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			companySettingsManager.removeCompany(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

}
