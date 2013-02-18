package com.defysope.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import com.defysope.model.ProductAttachment;
import com.defysope.model.ProductGroup;
import com.defysope.model.Purchase;

public interface ProductGroupSettingsManager {

	List<Map<String, Object>> getPGroup();

	ProductGroup savePGroup(ProductGroup group);

	void removePGroup(int id);

	void saveProductAttachment(int id, ProductAttachment file);

	List<Map<String, Object>> getProductList();

	List<Map<String, Object>> getProducts(int productGroup);

	void savePurchaseItems(HttpServletRequest request, Purchase purchase,
			JSONArray arr);
}
