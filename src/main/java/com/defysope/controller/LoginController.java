package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.Company;
import com.defysope.model.User;
import com.defysope.service.LoginManager;

@Controller
public class LoginController {

	@Autowired
	private LoginManager loginManager;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		String companyId = request.getParameter("company");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		Company company = loginManager.getCompany(companyId);
		if (company != null) {
			User user = loginManager.validateUser(company, userName, password);
			if (user != null) {
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("pagePermissions", loginManager.getPageAccessUrl(user.getRole().getId()));
			}
		}

		return new ModelAndView("index", model);
	}
}
