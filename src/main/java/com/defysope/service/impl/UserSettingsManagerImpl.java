package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.UserSettingsDao;
import com.defysope.model.Company;
import com.defysope.model.Role;
import com.defysope.service.UserSettingsManager;

@Service
@Transactional
public class UserSettingsManagerImpl implements UserSettingsManager {

	@Autowired
	private UserSettingsDao userSettingsDao;

	public List<Map<String, Object>> getRoles() {
		return userSettingsDao.getRoles();
	}

	public Role saveRole(Role role) {
		return userSettingsDao.saveRole(role);
	}

	public void removeRole(int id) {
		userSettingsDao.removeRole(id);
		
	}

	public List<Map<String, Object>> getUserList(Company companyId) {
		return userSettingsDao.getUserList(companyId);
	}

	public List<Map<String, Object>> getPagesList() {
		
		return userSettingsDao.getPagesList();
	}

	public void setAccessRight(int roleId, List<String> items) {
		userSettingsDao.setAccessRight(roleId, items);
		
	}

}
