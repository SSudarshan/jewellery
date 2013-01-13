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

import com.defysope.model.UnitOfMeasurement;
import com.defysope.service.UnitOfMeasurementSettingsManager;

@Controller
public class UnitOfMeasurementController {
	
	@Autowired
	private UnitOfMeasurementSettingsManager uomSettingsManager;
	
	@RequestMapping(value = "/addUOM", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("addUOM Called");
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("uomList", uomSettingsManager.getUOM());
		return new ModelAndView("addUOM", model);
	}
	
	@RequestMapping(value = "/saveUOM", method = RequestMethod.POST)
	public @ResponseBody
	Object addUOM(HttpServletRequest request, @ModelAttribute("uom") UnitOfMeasurement uom) {
		System.out.println("SaveUOM Called");
		UnitOfMeasurement savedUOMs = uomSettingsManager.saveUOM(uom);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedUOMs", savedUOMs);
		return model;

	}

	@RequestMapping(value = "/deleteUOM", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteUOM(HttpServletRequest request) {
		System.out.println("deleteUOM Called");
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			uomSettingsManager.removeUOM(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

}
