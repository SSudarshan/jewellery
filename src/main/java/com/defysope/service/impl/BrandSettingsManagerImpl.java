package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.BrandSettingsDao;
import com.defysope.model.Brand;
import com.defysope.service.BrandSettingsManager;

@Service
@Transactional
public class BrandSettingsManagerImpl implements BrandSettingsManager{

	@Autowired
	private BrandSettingsDao brandSettingsDao;
	public List<Map<String, Object>> getBrand() {
		
		return brandSettingsDao.getBrand();
	}

	public Brand saveBrand(Brand brand) {
		
		return brandSettingsDao.saveBrand(brand);
	}

	public void removeBrand(int id) {
		brandSettingsDao.removeBrand(id);
		
	}
	

}
