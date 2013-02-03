package com.defysope.core;

import javax.servlet.http.HttpServletRequest;

import com.defysope.model.Company;
import com.defysope.model.User;

public class DefysopeUtils {

	public static Company getCompany(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		Company company = user.getCompanyId();
		return company;
	}

	public static User getUser(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		return user;
	}

}
