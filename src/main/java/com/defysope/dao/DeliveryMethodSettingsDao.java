package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.DeliveryMethod;

public interface DeliveryMethodSettingsDao {
	
	List<Map<String, Object>> getDelivery();
	
	DeliveryMethod saveMethod(DeliveryMethod delivery);
	
	void removeDelivery(int id);

}
