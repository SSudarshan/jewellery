package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.LoginDao;
import com.defysope.model.Company;
import com.defysope.model.User;
import com.defysope.service.LoginManager;

@Service
@Transactional
public class LoginManagerImpl implements LoginManager{
	
	@Autowired
	private LoginDao loginDao;

	public boolean checkCompIdAvailability(String value) {
		return loginDao.checkCompIdAvailability(value);
	}

	public Company getCompany(String companyId) {
		return loginDao.getCompany(companyId);
	}

	public User validateUser(Company company, String userName, String password) {
		return loginDao.validateUser(company, userName, password);
	}

	public List<Map<String, Object>> getPageAccessUrl(int roleId) {
		return loginDao.getPageAccessUrl(roleId);
	}

	

}
