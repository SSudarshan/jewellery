package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.UnitOfMeasurement;


public interface UnitOfMeasurementSettingsManager {

	List<Map<String, Object>> getUOM();

	UnitOfMeasurement saveUOM(UnitOfMeasurement uom);

	void removeUOM(int id);
}
