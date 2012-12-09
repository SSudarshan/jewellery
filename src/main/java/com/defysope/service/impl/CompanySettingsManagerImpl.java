package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.CompanySettingsDao;
import com.defysope.service.CompanySettingsManager;

@Service("companySettingsManagerImpl")
@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
public class CompanySettingsManagerImpl implements CompanySettingsManager {

	@Autowired
	private CompanySettingsDao companySettingsDao;

	public List<Map<String, Object>> getCountryList() {
		return companySettingsDao.getCountryList();
	}

}
