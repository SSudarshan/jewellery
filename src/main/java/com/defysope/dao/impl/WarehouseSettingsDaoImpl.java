package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.WarehouseSettingsDao;
import com.defysope.model.Warehouse;

@Repository
public class WarehouseSettingsDaoImpl implements WarehouseSettingsDao{

	@Autowired
	private SessionFactory factory;
	
	public List<Map<String, Object>> getWarehouse() {
		
		return factory.getCurrentSession().createCriteria(Warehouse.class).list();
	}

	public Warehouse saveWarehouse(Warehouse whouse) {
		factory.getCurrentSession().saveOrUpdate(whouse);
		return whouse;
	}

	public void removeWarehouse(int id) {
		Warehouse whouse=(Warehouse) factory.getCurrentSession().load(Warehouse.class, id);
		factory.getCurrentSession().delete(whouse);
		
	}

}
