package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.CompanySettingsDao;
import com.defysope.model.Country;

@Repository("companySettingsDaoImpl")
public class CompanySettingsDaoImpl implements CompanySettingsDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Map<String, Object>> getCountryList() {

		return sessionFactory.getCurrentSession().createCriteria(Country.class)
				.list();
	}

}
