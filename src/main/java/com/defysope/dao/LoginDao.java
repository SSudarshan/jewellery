package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.Company;
import com.defysope.model.User;

public interface LoginDao {

	boolean checkCompIdAvailability(String value);

	Company getCompany(String companyId);

	User validateUser(Company company, String userName, String password);

	List<Map<String, Object>> getPageAccessUrl(int roleId);

}
