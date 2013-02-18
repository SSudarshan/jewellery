package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.core.BusinessObjectEditor2;
import com.defysope.model.Country;
import com.defysope.model.CustomerType;
import com.defysope.model.ProductGroup;
import com.defysope.model.Purchase;
import com.defysope.model.State;
import com.defysope.model.SupplierVendor;
import com.defysope.model.Warehouse;
import com.defysope.service.ProductGroupSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class AddPurchaseController {

	@Autowired
	MasterService masterService;

	@Autowired
	ProductGroupSettingsManager productGroupSettingsManager;

	@RequestMapping(value = "/inventory/addPurchase", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("suppliers", masterService.getObjects(SupplierVendor.class));
		model.put("warehouses", masterService.getObjects(Warehouse.class));
		model.put("productGroups", masterService.getObjects(ProductGroup.class));
		return new ModelAndView("addPurchase", model);
	}

	@RequestMapping(value = "/inventory/getProducts", method = RequestMethod.GET)
	public @ResponseBody
	Object getProducts(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int productGroup = Integer.parseInt(request
				.getParameter("productGroup"));
		model.put("products",
				productGroupSettingsManager.getProducts(productGroup));
		return model;
	}

	@RequestMapping(value = "/inventory/savePurchaseOrder", method = RequestMethod.POST)
	public @ResponseBody
	Object savePurchaseOrder(HttpServletRequest request,
			@ModelAttribute("purchase") Purchase purchase) {
		Map<String, Object> model = new HashMap<String, Object>();
		JSONArray arr = JSONArray.fromObject(request
				.getParameter("productItems"));
		productGroupSettingsManager.savePurchaseItems(request, purchase, arr);
		model.put("success", true);
		return model;
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) throws Exception {

		binder.registerCustomEditor(SupplierVendor.class, null,
				new BusinessObjectEditor2(masterService, SupplierVendor.class));

		binder.registerCustomEditor(Warehouse.class, null,
				new BusinessObjectEditor2(masterService, Warehouse.class));

	}
}
