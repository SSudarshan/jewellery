package com.defysope.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.core.BusinessObjectEditor2;
import com.defysope.model.Company;
import com.defysope.model.Role;
import com.defysope.model.User;
import com.defysope.service.UserSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class AddUserController {

	@Autowired
	private UserSettingsManager settingsManager;

	@Autowired
	private MasterService masterService;

	@RequestMapping(value = "/inventory/adduser", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("role", masterService.getObjects(Role.class));
		return new ModelAndView("addUser", model);
	}

	@RequestMapping(value = "/inventory/saveUser", method = RequestMethod.POST)
	public @ResponseBody
	Object addUser(HttpServletRequest request,
			@ModelAttribute("newUser") User newUser) {
		Map<String, Object> model = new HashMap<String, Object>();
		User user = (User) request.getSession().getAttribute("user");
		newUser.setCompanyId(user.getCompanyId());
		try {
			masterService.saveObject(newUser);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

	@RequestMapping(value = "/inventory/getUserList")
	public @ResponseBody
	Object addUser(HttpServletRequest request, @ModelAttribute("role") Role role) {
		Map<String, Object> model = new HashMap<String, Object>();
		User user = (User) request.getSession().getAttribute("user");
		int page = Integer.parseInt(request.getParameter("page"));
		int rows = Integer.parseInt(request.getParameter("rows"));
		List<Map<String, Object>> list = settingsManager.getUserList(user
				.getCompanyId());
		int startIndex = (page - 1) * rows;
		int endIndex = page * rows > list.size() ? list.size() : page * rows;
		int totalpages = 0;
		if (list.size() > 0) {
			int a = list.size() + (rows - (list.size() % rows));
			totalpages = a / rows;
		}
		if (endIndex < startIndex) {
			startIndex = 0;
			endIndex = 0;
		}
		model.put("currpage", page);
		model.put("totalpages", totalpages);
		model.put("totalrecords", list.size());
		model.put("data", list.subList(startIndex, endIndex));
		return model;
	}

	@RequestMapping(value = "/inventory/deleteUser")
	public @ResponseBody
	Object deleteCustomer(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		if (id != 0) {
			try {
				masterService.removeObject(User.class, id);
				model.put("success", true);
			} catch (Exception e) {
				model.put("success", false);
			}

		}
		return model;
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) throws Exception {

		binder.registerCustomEditor(Company.class, null,
				new BusinessObjectEditor2(masterService, Company.class));

		binder.registerCustomEditor(Role.class, null,
				new BusinessObjectEditor2(masterService, Role.class));

	}

}
