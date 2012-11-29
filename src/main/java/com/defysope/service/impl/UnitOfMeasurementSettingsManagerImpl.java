package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.UnitOfMeasurementDao;
import com.defysope.model.UnitOfMeasurement;
import com.defysope.service.UnitOfMeasurementSettingsManager;

@Service
@Transactional
public class UnitOfMeasurementSettingsManagerImpl implements UnitOfMeasurementSettingsManager{

	@Autowired
	private UnitOfMeasurementDao uomDao;
	
	public List<Map<String, Object>> getUOM() {
		
		return uomDao.getUOM();
	}

	public UnitOfMeasurement saveUOM(UnitOfMeasurement uom) {
		
		return uomDao.saveUOM(uom);
	}

	public void removeUOM(int id) {
		uomDao.removeUOM(id);
		
	}

}
