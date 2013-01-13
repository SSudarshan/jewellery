package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.DiscountSettingsDao;
import com.defysope.model.Discount;

@Repository
public class DiscountSettingsDaoImpl implements DiscountSettingsDao{

	@Autowired
	private SessionFactory factory;
	
	public List<Map<String, Object>> getDiscount() {
		
		return factory.getCurrentSession().createCriteria(Discount.class).list();
	}

	public Discount saveMethod(Discount disc) {
		factory.getCurrentSession().saveOrUpdate(disc);
		return disc;
	}

	public void removeDiscount(int id) {
		Discount disc= (Discount) factory.getCurrentSession().load(Discount.class, id);
		factory.getCurrentSession().delete(disc);
		
	}

}
