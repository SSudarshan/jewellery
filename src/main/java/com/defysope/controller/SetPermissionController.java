package com.defysope.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.Role;
import com.defysope.service.UserSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class SetPermissionController {

	@Autowired
	private UserSettingsManager userSettingsManager;

	@Autowired
	private MasterService masterService;

	@RequestMapping(value = "/inventory/accessRights", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		// add company id in getObjects msg
		model.put("pages", userSettingsManager.getPagesList());
		model.put("roles", masterService.getObjects(Role.class));
		return new ModelAndView("setPermission", model);
	}

	@RequestMapping(value = "/inventory/setpermission", method = RequestMethod.POST)
	public @ResponseBody
	Object addUser(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int roleId = Integer.parseInt(request.getParameter("roleId"));
		String pages = request.getParameter("pages");
		List<String> items = Arrays.asList(pages.split("\\s*,\\s*"));
		try {
			userSettingsManager.setAccessRight(roleId,items);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

}
