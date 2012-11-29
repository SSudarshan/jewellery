package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.ProductGroup;

public interface ProductGroupSettingsManager {

    List<Map<String, Object>> getPGroup();
	
	ProductGroup savePGroup(ProductGroup group);
	
    void removePGroup(int id);
}
