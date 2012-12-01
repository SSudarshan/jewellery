package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.Warehouse;

public interface WarehouseSettingsDao {
	
	List<Map<String, Object>> getWarehouse();
	
	Warehouse saveWarehouse(Warehouse whouse);
	
	void removeWarehouse(int id);

}
