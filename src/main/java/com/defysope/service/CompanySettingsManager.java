package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.Company;

public interface CompanySettingsManager {

List<Map<String, Object>> getCompany();
	
	Company saveCompany(Company comp);
	
	void removeCompany(int id);
}
