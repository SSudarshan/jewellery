package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.CustomerType;

public interface CustomerTypeSettingsManager {
	
    List<Map<String, Object>> getCType();
	
	CustomerType saveCtype(CustomerType type);
	
	void removeCType(int id);


}
