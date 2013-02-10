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

import com.defysope.model.Brand;

import com.defysope.service.BrandSettingsManager;

@Controller
public class AddBrandController {

	@Autowired
	private BrandSettingsManager brandSettingsManager;
	
	
	@RequestMapping(value = "/addBrand", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("brandList", brandSettingsManager.getBrand());
		return new ModelAndView("addBrand", model);
	}

	@RequestMapping(value = "/saveBrand", method = RequestMethod.POST)
	public @ResponseBody
	Object addUser(HttpServletRequest request, @ModelAttribute("role") Brand brand) {
		Brand savedBrand = brandSettingsManager.saveBrand(brand);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedBrand", savedBrand);
		return model;

	}

	@RequestMapping(value = "/deleteBrand", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteRole(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			brandSettingsManager.removeBrand(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}
}
