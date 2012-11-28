package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.CustomerTypeSettingsDao;
import com.defysope.modal.CustomerType;

@Repository
public class CustomerTypeSettingsDaoImpl implements CustomerTypeSettingsDao{

	@Autowired
	private SessionFactory factory;
	
	public List<Map<String, Object>> getCType() {
		
		return factory.getCurrentSession().createCriteria(CustomerType.class).list();
	}

	public CustomerType saveCtype(CustomerType type) {
		 
		factory.getCurrentSession().saveOrUpdate(type);
		return type;
	}

	public void removeCType(int id) {
		
		CustomerType type= (CustomerType) factory.getCurrentSession().load(CustomerType.class,id);
		factory.getCurrentSession().delete(type);
		
	}
	
	

}
