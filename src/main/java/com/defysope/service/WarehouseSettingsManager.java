package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.model.Warehouse;

public interface WarehouseSettingsManager {
	
    List<Map<String, Object>> getWarehouse();
	
	Warehouse saveWarehouse(Warehouse whouse);
	
	void removeWarehouse(int id);

}
