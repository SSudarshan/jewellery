package com.defysope.dao;

import java.util.List;
import java.util.Map;

public interface SupplierDao {
	
	List<Map<String, Object>> getGridData(int supplierRecord);

	void deleleSupplier(int id);

}
