package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.UnitOfMeasurementDao;
import com.defysope.model.UnitOfMeasurement;

@Repository
public class UnitOfMeasurementDaoImpl implements UnitOfMeasurementDao{

	@Autowired
	private SessionFactory factory;
	public List<Map<String, Object>> getUOM() {
		return factory.getCurrentSession().createCriteria(UnitOfMeasurement.class).list();
	}

	public UnitOfMeasurement saveUOM(UnitOfMeasurement uom) {
		factory.getCurrentSession().saveOrUpdate(uom);
		return uom;
	}

	public void removeUOM(int id) {
		UnitOfMeasurement uom=(UnitOfMeasurement) factory.getCurrentSession().load(UnitOfMeasurement.class, id);
		factory.getCurrentSession().delete(uom);
		
	}

}
