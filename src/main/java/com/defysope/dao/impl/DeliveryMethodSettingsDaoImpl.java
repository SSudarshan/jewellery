package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.DeliveryMethodSettingsDao;
import com.defysope.model.DeliveryMethod;

@Repository
public class DeliveryMethodSettingsDaoImpl implements DeliveryMethodSettingsDao {
    
	@Autowired
	private SessionFactory factory;
	
	public List<Map<String, Object>> getDelivery() {
		
		return factory.getCurrentSession().createCriteria(DeliveryMethod.class).list();
	}

	public DeliveryMethod saveMethod(DeliveryMethod delivery) {
		factory.getCurrentSession().saveOrUpdate(delivery);
		return delivery;
	}

	public void removeDelivery(int id) {
		DeliveryMethod delivery= (DeliveryMethod) factory.getCurrentSession().load(DeliveryMethod.class, id);
		factory.getCurrentSession().delete(delivery);
		
	}

}
