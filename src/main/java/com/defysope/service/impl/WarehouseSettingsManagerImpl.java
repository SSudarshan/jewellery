package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.WarehouseSettingsDao;
import com.defysope.model.Warehouse;
import com.defysope.service.WarehouseSettingsManager;

@Service
@Transactional
public class WarehouseSettingsManagerImpl implements WarehouseSettingsManager{

	@Autowired
	private WarehouseSettingsDao warehouseSettingsDao;

	public List<Map<String, Object>> getWarehouse() {
		
		return warehouseSettingsDao.getWarehouse();
	}

	public Warehouse saveWarehouse(Warehouse whouse) {
		
		return warehouseSettingsDao.saveWarehouse(whouse);
	}

	public void removeWarehouse(int id) {
		warehouseSettingsDao.removeWarehouse(id);
		
	}
	
	
}
