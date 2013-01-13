package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.core.BusinessObjectEditor2;
import com.defysope.model.Brand;
import com.defysope.model.Product;
import com.defysope.model.ProductAttachment;
import com.defysope.model.ProductGroup;
import com.defysope.model.UnitOfMeasurement;
import com.defysope.service.ProductGroupSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class AddProductController {

	@Autowired
	private MasterService masterService;

	@Autowired
	private ProductGroupSettingsManager manager;

	@RequestMapping(value = "/inventory/addProduct", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			@ModelAttribute("model") ModelMap model) {
		model.put("brandList", masterService.getObjects(Brand.class));
		model.put("uomList", masterService.getObjects(UnitOfMeasurement.class));
		model.put("productGrpList",
				masterService.getObjects(ProductGroup.class));
		int id = NumberUtils.toInt(request.getParameter("id"));
		if (id > 0) {
			model.put("product", masterService.getObject(Product.class, id));
		}
		return new ModelAndView("addProduct", model);
	}

	@RequestMapping(value = "/inventory/saveProduct")
	public @ResponseBody
	Object deleteRole(HttpServletRequest request,
			@ModelAttribute("product") Product product,
			@ModelAttribute("file") ProductAttachment file) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			masterService.saveObject(product);
			if (file.getFile().getOriginalFilename() != ""
					&& file.getFile().getOriginalFilename() != null) {
				manager.saveProductAttachment(product.getId(), file);
			}
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

	@ModelAttribute("product")
	public Product product(HttpServletRequest request) {
		int id = NumberUtils.toInt(request.getParameter("id"));
		Product object = (Product) masterService.getObject(Product.class, id);
		if (object == null) {
			object = new Product();
		}
		return object;
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) throws Exception {

		binder.registerCustomEditor(Brand.class, null,
				new BusinessObjectEditor2(masterService, Brand.class));

		binder.registerCustomEditor(UnitOfMeasurement.class, null,
				new BusinessObjectEditor2(masterService,
						UnitOfMeasurement.class));
	}

}
