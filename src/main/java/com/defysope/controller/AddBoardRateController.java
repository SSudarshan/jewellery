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

import com.defysope.model.Role;
import com.defysope.model.BoardRate;
import com.defysope.service.BoardRateSettingsManager;

@Controller
public class AddBoardRateController {
	
	@Autowired
	private BoardRateSettingsManager boarrRateSettingsManager;
	
	@RequestMapping(value = "/addBoardRate", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("rateList", boarrRateSettingsManager.getBRate());
		return new ModelAndView("addBoardRate", model);
	}

	@RequestMapping(value = "/saveBRate", method = RequestMethod.POST)
	public @ResponseBody
	Object addBRate(HttpServletRequest request, @ModelAttribute("rate") BoardRate rate) {
		BoardRate savedRate = boarrRateSettingsManager.saveBRate(rate);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedRate", savedRate);
		return model;

	}

	@RequestMapping(value = "/deleteBRate", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteBRate(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			boarrRateSettingsManager.removeBRate(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}


}
