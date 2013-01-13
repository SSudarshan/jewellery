package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.Discount;

public interface DiscountSettingsDao {

   List<Map<String, Object>> getDiscount();
	
	Discount saveMethod(Discount disc);
	
	void removeDiscount(int id);
}
