package com.defysope.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.ProductGroupSettingsDao;
import com.defysope.model.Product;
import com.defysope.model.ProductAttachment;
import com.defysope.model.ProductGroup;
import com.defysope.model.Purchase;
import com.defysope.model.PurchaseItems;
import com.defysope.model.PurchaseStatus;
import com.defysope.service.ProductGroupSettingsManager;

@Transactional
@Service
public class ProductGroupSettingsManagerImpl implements
		ProductGroupSettingsManager {

	@Autowired
	private MasterService masterService;

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

	public List<Map<String, Object>> getProducts(int productGroup) {
		return productGroupSettingsDao.getProducts(productGroup);
	}

	public void savePurchaseItems(HttpServletRequest request,
			Purchase purchase, JSONArray array) {
		purchase.setModifiedDate(new Date());
		masterService.saveObject(purchase);
		for (int i = 0; i < array.size(); i++) {
			PurchaseItems purchaseItems = new PurchaseItems();
			JSONObject row = array.getJSONObject(i);
			purchaseItems.setComments(row.getString("commentValue"));
			purchaseItems.setPrice(row.getDouble("priceValue"));
			purchaseItems.setQuantity(row.getInt("quantityValue"));
			purchaseItems.setProductId(masterService.getObject(Product.class,
					row.getInt("productId")));
			purchaseItems.setPurchaseId(purchase);
			purchaseItems.setStatus(purchase.getStatus() == null ? "PENDING"
					: purchase.getStatus());
			masterService.saveObject(purchaseItems);
		}
	}

}
