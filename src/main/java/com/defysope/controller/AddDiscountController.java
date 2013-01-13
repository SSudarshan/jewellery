package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.Discount;
import com.defysope.service.DiscountSettingsManager;

@Controller
public class AddDiscountController {
	
	private DiscountSettingsManager discountSettingsManager;
	
	@RequestMapping(value = "/addDiscount", method = RequestMethod.GET)
	public ModelAndView index(@ModelAttribute("model") ModelMap model) {

		return new ModelAndView("addDiscount", model);
	}
	
	@RequestMapping(value = "/saveDiscount", method = RequestMethod.POST)
	public @ResponseBody
	Object addDMethod(HttpServletRequest request, @ModelAttribute("disc") Discount disc) {
		Discount savedDiscount = discountSettingsManager.saveMethod(disc);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedDiscount", savedDiscount);
		return model;

	}

	@RequestMapping(value = "/deleteDiscount", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteDMethod(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			discountSettingsManager.removeDiscount(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}
}
