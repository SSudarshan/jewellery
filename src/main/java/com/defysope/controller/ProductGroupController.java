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

import com.defysope.model.ProductGroup;
import com.defysope.model.Role;
import com.defysope.service.ProductGroupSettingsManager;

@Controller
public class ProductGroupController {
	
	@Autowired
	private ProductGroupSettingsManager prouctGroupSettingsManager;
	
	@RequestMapping(value = "/addProductGroup", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("groupList", prouctGroupSettingsManager.getPGroup());
		return new ModelAndView("addProductGroup", model);
	}

	@RequestMapping(value = "/savePG", method = RequestMethod.POST)
	public @ResponseBody
	Object addUser(HttpServletRequest request, @ModelAttribute("group") ProductGroup group) {
		ProductGroup savedPG = prouctGroupSettingsManager.savePGroup(group);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedPG", savedPG);
		return model;

	}

	@RequestMapping(value = "/deletePG", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteRole(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			prouctGroupSettingsManager.removePGroup(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}
}
