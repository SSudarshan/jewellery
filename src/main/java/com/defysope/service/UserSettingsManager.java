package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.Company;
import com.defysope.model.Role;

public interface UserSettingsManager {

	List<Map<String, Object>> getRoles();

	Role saveRole(Role role);

	void removeRole(int id);

	List<Map<String, Object>> getUserList(Company companyId);

	List<Map<String, Object>> getPagesList();

	void setAccessRight(int roleId, List<String> items);

}
