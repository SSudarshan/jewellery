package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.ProductGroupSettingsDao;
import com.defysope.model.ProductAttachment;
import com.defysope.model.ProductGroup;
import com.defysope.service.ProductGroupSettingsManager;

@Transactional
@Service
public class ProductGroupSettingsManagerImpl implements
		ProductGroupSettingsManager {

	@Autowired
	private ProductGroupSettingsDao productGroupSettingsDao;

	public List<Map<String, Object>> getPGroup() {

		return productGroupSettingsDao.getPGroup();
	}

	public ProductGroup savePGroup(ProductGroup group) {

		return productGroupSettingsDao.savePGroup(group);
	}

	public void removePGroup(int id) {
		productGroupSettingsDao.removePGroup(id);

	}

	public void saveProductAttachment(int productId, ProductAttachment file) {
		productGroupSettingsDao.saveProductAttachment(productId, file);

	}

	public List<Map<String, Object>> getProductList() {
		return productGroupSettingsDao.getProductList();
	}

}
