package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.DiscountSettingsDao;
import com.defysope.model.Discount;
import com.defysope.service.DiscountSettingsManager;

@Service
@Transactional
public class DiscountSettingsManagerImpl implements DiscountSettingsManager{

	@Autowired
	private DiscountSettingsDao discountSettingsDao;
	
	public List<Map<String, Object>> getDiscount() {
		
		return discountSettingsDao.getDiscount();
	}

	public Discount saveMethod(Discount disc) {
		
		return discountSettingsDao.saveMethod(disc);
	}

	public void removeDiscount(int id) {
		discountSettingsDao.removeDiscount(id);
		
	}

}
