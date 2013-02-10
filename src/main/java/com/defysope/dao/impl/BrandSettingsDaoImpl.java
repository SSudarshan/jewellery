package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.BrandSettingsDao;
import com.defysope.model.Brand;

@Repository
public class BrandSettingsDaoImpl implements BrandSettingsDao{
	
	@Autowired
	private SessionFactory factory;

	public List<Map<String, Object>> getBrand() {
		
		return factory.getCurrentSession().createCriteria(Brand.class).list();
	}

	public Brand saveBrand(Brand brand) {
		factory.getCurrentSession().saveOrUpdate(brand);
		return brand;
	}

	public void removeBrand(int id) {
		Brand brand=(Brand) factory.getCurrentSession().load(Brand.class, id);
		factory.getCurrentSession().delete(brand);
		
	}

}
