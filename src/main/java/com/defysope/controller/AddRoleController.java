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

import com.defysope.core.DefysopeUtils;
import com.defysope.model.Role;
import com.defysope.model.User;
import com.defysope.service.UserSettingsManager;

@Controller
public class AddRoleController {

	@Autowired
	private UserSettingsManager userSettingsManager;

	@RequestMapping(value = "/addRole", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("roleList", userSettingsManager.getRoles());
		return new ModelAndView("addRole", model);
	}

	@RequestMapping(value = "/saveRole", method = RequestMethod.POST)
	public @ResponseBody
	Object addUser(HttpServletRequest request, @ModelAttribute("role") Role role) {
		User user = DefysopeUtils.getUser(request);
		role.setCompanyId(user.getCompanyId());
		Role savedRole = userSettingsManager.saveRole(role);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedRole", savedRole);
		return model;

	}

	@RequestMapping(value = "/deleteRole", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteRole(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			userSettingsManager.removeRole(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

}
