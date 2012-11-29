package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.Company;

public interface CompanySettingsDao {
	
	List<Map<String, Object>> getCompany();
	
	Company saveCompany(Company comp);
	
	void removeCompany(int id);

}
