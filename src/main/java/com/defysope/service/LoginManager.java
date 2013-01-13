package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.Company;
import com.defysope.model.User;

public interface LoginManager {
	
	boolean checkCompIdAvailability(String value);

	Company getCompany(String companyId);

	User validateUser(Company company, String userName, String password);

	List<Map<String, Object>> getPageAccessUrl(int roleId);

}
