package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.ProductAttachment;
import com.defysope.model.ProductGroup;

public interface ProductGroupSettingsDao {

	List<Map<String, Object>> getPGroup();

	ProductGroup savePGroup(ProductGroup group);

	void removePGroup(int id);

	void saveProductAttachment(int productId, ProductAttachment file);

	List<Map<String, Object>> getProductList();

	List<Map<String, Object>> getProducts(int productGroup);

}
