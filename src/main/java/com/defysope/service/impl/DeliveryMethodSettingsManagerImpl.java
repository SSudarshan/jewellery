package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.DeliveryMethodSettingsDao;
import com.defysope.model.DeliveryMethod;
import com.defysope.service.DeliveryMethodSettingsManager;

@Service
@Transactional
public class DeliveryMethodSettingsManagerImpl implements DeliveryMethodSettingsManager {

	@Autowired
	private DeliveryMethodSettingsDao deliveryMethodSettingsDao;
	
	public List<Map<String, Object>> getDelivery() {
		
		return deliveryMethodSettingsDao.getDelivery();
	}

	public DeliveryMethod saveMethod(DeliveryMethod delivery) {
		
		return deliveryMethodSettingsDao.saveMethod(delivery);
	}

	public void removeDelivery(int id) {
		deliveryMethodSettingsDao.removeDelivery(id);
		
	}

}
