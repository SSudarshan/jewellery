package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.CompanySettingsDao;
import com.defysope.model.Company;

@Repository
public class CompanySettingsDaoImpl implements CompanySettingsDao{

	@Autowired
	private SessionFactory factory;
	
	public List<Map<String, Object>> getCompany() {
		
		return factory.getCurrentSession().createCriteria(Company.class).list();
	}

	public Company saveCompany(Company comp) {
		factory.getCurrentSession().saveOrUpdate(comp);
		return comp;
	}

	public void removeCompany(int id) {
		Company comp= (Company) factory.getCurrentSession().load(Company.class, id);
		factory.getCurrentSession().delete(comp);
		
	}

}
