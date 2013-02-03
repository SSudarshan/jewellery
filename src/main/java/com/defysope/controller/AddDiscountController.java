package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.defysope.dummy.DeliveryAddress;
import com.defysope.model.Address;
import com.defysope.model.Company;
import com.defysope.model.Country;
import com.defysope.model.Customer;
import com.defysope.model.CustomerAddress;
import com.defysope.model.CustomerType;
import com.defysope.model.Discount;
import com.defysope.model.Product;
import com.defysope.model.ProductGroup;
import com.defysope.model.Role;
import com.defysope.model.State;
import com.defysope.service.DiscountSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class AddDiscountController {

	private DiscountSettingsManager discountSettingsManager;

	@Autowired
	private MasterService masterService;

	@RequestMapping(value = "/inventory/addDiscount", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			@ModelAttribute("model") ModelMap model) {
		String discountId = request.getParameter("id");
		if (discountId != null) {
			model.put(
					"discount",
					masterService.getObject(Customer.class,
							Integer.parseInt(discountId)));
		}
		model.put("productGroup", masterService.getObjects(ProductGroup.class));
		model.put("product", masterService.getObjects(Product.class));
		return new ModelAndView("addDiscount", model);
	}

	@RequestMapping(value = "/saveDiscount")
	public @ResponseBody
	Object deleteRole(HttpServletRequest request,
			@ModelAttribute("discount") Discount discount) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			masterService.saveObject(discount);
			// Map<String, Object> model = new HashMap<String, Object>();
			// model.put("savedRole", savedRole);

			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) throws Exception {

		binder.registerCustomEditor(ProductGroup.class, null,
				new BusinessObjectEditor2(masterService, ProductGroup.class));

		binder.registerCustomEditor(Product.class, null,
				new BusinessObjectEditor2(masterService, Product.class));

	}

	@RequestMapping(value = "/deleteDiscount", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteDMethod(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			discountSettingsManager.removeDiscount(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}
}
