package com.defysope.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.core.BusinessObjectEditor2;
import com.defysope.model.Company;
import com.defysope.model.Country;
import com.defysope.model.State;
import com.defysope.service.impl.MasterService;



@Controller
public class CompanyController {
	
//	@Autowired
//	private CompanySettingsManager companySettingsManager;
	
	@Autowired
	private MasterService masterService;
	
	@RequestMapping(value = "/addCompany", method = RequestMethod.GET)
	public ModelAndView index(@ModelAttribute("model") ModelMap model) {
		model.put("states", masterService.getObjects(State.class));
		model.put("countryList", masterService.getObjects(Country.class));
		return new ModelAndView("addCompany", model);
	}
	
	/*@RequestMapping(value = "/saveCompany")
	public ModelAndView addUser(HttpServletRequest request,
			@ModelAttribute("company") Company company
			) {
		Map<String, Object> model = new HashMap<String, Object>();
		if(company.getId()<=1)
		{
		masterService.saveObject(company);
		}
		else
		{
			System.out.println("You Can make only one entry");
		}
		return new ModelAndView("addCompany", model);
	}
*/
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/saveCompany")
	public @ResponseBody
	Object deleteRole(HttpServletRequest request,
			@ModelAttribute("company") Company company) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

			List list=masterService.getObjects(Company.class);
			
			if(list.isEmpty()==true)
			{
				masterService.saveObject(company);
				model.put("success", true);
			}
			//model.put("success", true);
			else
			{
				model.put("success", false);
			}
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) throws Exception {

		binder.registerCustomEditor(Country.class, null,
				new BusinessObjectEditor2(masterService, Country.class));

		binder.registerCustomEditor(State.class, null,
				new BusinessObjectEditor2(masterService, State.class));

	}

}
