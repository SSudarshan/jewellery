package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.UnitOfMeasurement;

public interface UnitOfMeasurementDao {

	List<Map<String, Object>> getUOM();

	UnitOfMeasurement saveUOM(UnitOfMeasurement uom);

	void removeUOM(int id);
}
