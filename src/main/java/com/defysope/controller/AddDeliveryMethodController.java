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

import com.defysope.model.BoardRate;
import com.defysope.model.DeliveryMethod;
import com.defysope.service.DeliveryMethodSettingsManager;

@Controller
public class AddDeliveryMethodController {

	@Autowired
	private DeliveryMethodSettingsManager deliveryMethodSettingsManager;
	
	@RequestMapping(value = "/addDeliveryMethod", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("deliveryList", deliveryMethodSettingsManager.getDelivery());
		return new ModelAndView("addDeliveryMethod", model);
	}

	@RequestMapping(value = "/saveDMethod", method = RequestMethod.POST)
	public @ResponseBody
	Object addDMethod(HttpServletRequest request, @ModelAttribute("delivery") DeliveryMethod delivery) {
		DeliveryMethod savedDelivery = deliveryMethodSettingsManager.saveMethod(delivery);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedDelivery", savedDelivery);
		return model;

	}

	@RequestMapping(value = "/deleteDMethod", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteDMethod(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			deliveryMethodSettingsManager.removeDelivery(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

}
