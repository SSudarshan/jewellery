package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.CompanySettingsDao;
import com.defysope.modal.Company;
import com.defysope.service.CompanySettingsManager;

@Service
@Transactional
public class CompanySettingsManagerImpl implements CompanySettingsManager{

	@Autowired
	private CompanySettingsDao companySettingsDao;
	
	public List<Map<String, Object>> getCompany() {
		
		return companySettingsDao.getCompany();
	}

	public Company saveCompany(Company comp) {
		
		return companySettingsDao.saveCompany(comp);
	}

	public void removeCompany(int id) {
		companySettingsDao.removeCompany(id);
		
	}

}
