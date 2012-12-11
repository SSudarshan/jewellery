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
import com.defysope.model.Country;
import com.defysope.model.Customer;
import com.defysope.model.CustomerAddress;
import com.defysope.model.CustomerType;
import com.defysope.model.State;
import com.defysope.service.impl.MasterService;

@Controller
public class AddCustomerController {

	@Autowired
	private MasterService masterService;

	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public ModelAndView index(@ModelAttribute("model") ModelMap model) {
		model.put("customerType", masterService.getObjects(CustomerType.class));
		model.put("states", masterService.getObjects(State.class));
		model.put("countryList", masterService.getObjects(Country.class));
		return new ModelAndView("addCustomer", model);
	}

	/*@RequestMapping(value = "/saveCustomer")
	public ModelAndView addUser(HttpServletRequest request,
			@ModelAttribute("customer") Customer customer,
			@ModelAttribute("address") Address address,
			@ModelAttribute("delivery") DeliveryAddress daddress) {
		Map<String, Object> model = new HashMap<String, Object>();
		masterService.saveObject(customer);
		masterService.saveObject(address);
		CustomerAddress customerAddress = new CustomerAddress();
		customerAddress.setCustomerId(customer);
		customerAddress.setContactAddress(address);
		masterService.saveObject(customerAddress);
		return new ModelAndView("addCustomer", model);
	}*/
	@RequestMapping(value = "/saveCustomer")
	public @ResponseBody
	Object deleteRole(HttpServletRequest request,
			@ModelAttribute("customer") Customer customer,
			@ModelAttribute("address") Address address,
			@ModelAttribute("delivery") DeliveryAddress daddress) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {

			masterService.saveObject(customer);
			masterService.saveObject(address);
			CustomerAddress customerAddress = new CustomerAddress();
			customerAddress.setCustomerId(customer);
			customerAddress.setContactAddress(address);
			masterService.saveObject(customerAddress);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) throws Exception {

		binder.registerCustomEditor(CustomerType.class, null,
				new BusinessObjectEditor2(masterService, CustomerType.class));

		binder.registerCustomEditor(Country.class, null,
				new BusinessObjectEditor2(masterService, Country.class));

		binder.registerCustomEditor(State.class, null,
				new BusinessObjectEditor2(masterService, State.class));

	}
}
