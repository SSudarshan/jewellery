package com.defysope.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import com.defysope.model.CustomerType;

public interface CustomerTypeSettingsDao {

	void setDataSource(DataSource ds);

	List<Map<String, Object>> getCType();

	CustomerType saveCtype(CustomerType type);

	void removeCType(int id);

	List<Map<String, Object>> getGridData(int customerType);

	void deleleCustomer(int id);
	
	public List<Map<String, Object>> getPurchaseDatas();

}
