package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.CustomerType;

public interface CustomerTypeSettingsDao {
	
	List<Map<String, Object>> getCType();
	
	CustomerType saveCtype(CustomerType type);
	
	void removeCType(int id);

}
