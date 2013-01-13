package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.defysope.model.Company;
import com.defysope.model.Role;
import com.defysope.model.User;
import com.defysope.service.LoginManager;
import com.defysope.service.impl.MasterService;

@Controller
public class SignUpController {

	@Autowired
	private MasterService masterService;

	@Autowired
	private LoginManager loginManager;

	@RequestMapping(value = "/signup")
	public @ResponseBody
	Object deleteRole(HttpServletRequest request,
			@ModelAttribute("company") Company company) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

			masterService.saveObject(company);
			Role role = new Role();
			role.setDescription("Superuser");
			role.setCompanyId(company);
			masterService.saveObject(role);
			User user = new User();
			user.setCompanyId(company);
			user.setRole(role);
			user.setUerName(request.getParameter("userName"));
			user.setPassword(request.getParameter("password"));
			user.setEmail(request.getParameter("email"));
			masterService.saveObject(user);

			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

	@RequestMapping(value = "/availability")
	public @ResponseBody
	Object checkCompIdAvailability(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		String value = request.getParameter("companyId");
		boolean flag = loginManager.checkCompIdAvailability(value);
		model.put("success", flag);
		return model;

	}

}
