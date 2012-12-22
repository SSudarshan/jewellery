package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.CustomerTypeSettingsDao;
import com.defysope.model.CustomerType;
import com.defysope.service.CustomerTypeSettingsManager;


@Service
@Transactional
public class CustomerTypeSettingsManagerImpl implements CustomerTypeSettingsManager{

	@Autowired
	private CustomerTypeSettingsDao customerTypeSettingsDao;
	
	public List<Map<String, Object>> getCType() {
		
		return customerTypeSettingsDao.getCType();
	}

	public CustomerType saveCtype(CustomerType type) {
		
		return customerTypeSettingsDao.saveCtype(type);
	}

	public void removeCType(int id) {
		customerTypeSettingsDao.removeCType(id);
		
	}

	public List<Map<String, Object>> getGridData(int customerType) {
		return customerTypeSettingsDao.getGridData(customerType);
	}

	public void deleleCustomer(int id) {
		
	customerTypeSettingsDao.deleleCustomer(id);
		
	}

}
