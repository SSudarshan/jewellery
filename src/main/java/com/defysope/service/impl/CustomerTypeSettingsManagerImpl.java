package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.CustomerTypeSettingsDao;
import com.defysope.modal.CustomerType;
import com.defysope.service.CustomerTypeSettingsManager;


@Service
@Transactional
public class CustomerTypeSettingsManagerImpl implements CustomerTypeSettingsManager{

	@Autowired
	private CustomerTypeSettingsDao customerTypeSettingsManager;
	
	public List<Map<String, Object>> getCType() {
		
		return customerTypeSettingsManager.getCType();
	}

	public CustomerType saveCtype(CustomerType type) {
		
		return customerTypeSettingsManager.saveCtype(type);
	}

	public void removeCType(int id) {
		customerTypeSettingsManager.removeCType(id);
		
	}

}
