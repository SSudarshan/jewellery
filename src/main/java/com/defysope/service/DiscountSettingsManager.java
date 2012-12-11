package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.Discount;

public interface DiscountSettingsManager {

	 List<Map<String, Object>> getDiscount();
		
		Discount saveMethod(Discount disc);
		
		void removeDiscount(int id);
}
