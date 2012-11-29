package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.ProductGroupSettingsDao;
import com.defysope.model.ProductGroup;

@Repository
public class ProductGroupSettingsDaoImpl implements ProductGroupSettingsDao {

	@Autowired
	private SessionFactory factory;
	
	public List<Map<String, Object>> getPGroup() {
		
		return factory.getCurrentSession().createCriteria(ProductGroup.class).list();
	}

	public ProductGroup savePGroup(ProductGroup group) {
		factory.getCurrentSession().saveOrUpdate(group);
		return group;
	}

	public void removePGroup(int id) {
		ProductGroup group= (ProductGroup) factory.getCurrentSession().load(ProductGroup.class, id);
		factory.getCurrentSession().delete(group);
		
	}

}
