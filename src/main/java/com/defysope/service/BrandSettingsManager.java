package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.Brand;

public interface BrandSettingsManager {

List<Map<String, Object>> getBrand();
	
	Brand saveBrand(Brand brand);
	
	void removeBrand(int id);
}
