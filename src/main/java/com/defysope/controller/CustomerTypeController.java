package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.CustomerType;
import com.defysope.service.CustomerTypeSettingsManager;

@Controller
public class CustomerTypeController {
	
	@Autowired
	private CustomerTypeSettingsManager customerTypeManager;
	
	@RequestMapping(value = "/addCustomerType", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("typeList", customerTypeManager.getCType());
		return new ModelAndView("addCustomerType", model);
	}

	@RequestMapping(value = "/saveCType", method = RequestMethod.POST)
	public @ResponseBody
	Object addUser(HttpServletRequest request, @ModelAttribute("group") CustomerType type) {
		CustomerType savedType = customerTypeManager.saveCtype(type);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedType", savedType);
		return model;

	}

	@RequestMapping(value = "/deleteCType", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteRole(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			customerTypeManager.removeCType(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}
	

}
