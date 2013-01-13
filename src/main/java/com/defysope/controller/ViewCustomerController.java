package com.defysope.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.CustomerType;
import com.defysope.model.Role;
import com.defysope.service.CustomerTypeSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class ViewCustomerController {

	@Autowired
	private CustomerTypeSettingsManager manager;

	@Autowired
	private MasterService service;

	@RequestMapping(value = "/inventory/viewCustomer", method = RequestMethod.GET)
	public ModelAndView index(@ModelAttribute("model") ModelMap model) {

		model.put("customerType", service.getObjects(CustomerType.class));
		return new ModelAndView("viewCustomer", model);
	}

	@RequestMapping(value = "/viewCustomer/list.html")
	public @ResponseBody
	Object addUser(HttpServletRequest request, @ModelAttribute("role") Role role) {
		Map<String, Object> model = new HashMap<String, Object>();
		int page = Integer.parseInt(request.getParameter("page"));
		int rows = Integer.parseInt(request.getParameter("rows"));
		int customerType = Integer.parseInt(request
				.getParameter("customerType"));
		List<Map<String, Object>> list = manager.getGridData(customerType);
		int startIndex = (page - 1) * rows;
		int endIndex = page * rows > list.size() ? list.size() : page * rows;
		int totalpages = 0;
		if (list.size() > 0) {
			int a = list.size() + (rows - (list.size() % rows));
			totalpages = a / rows;
		}
		if (endIndex < startIndex) {
			startIndex = 0;
			endIndex = 0;
		}
		model.put("currpage", page);
		model.put("totalpages", totalpages);
		model.put("totalrecords", list.size());
		model.put("data", list.subList(startIndex, endIndex));
		return model;
	}

	@RequestMapping(value = "/viewCustomer/deleteCustomer.html")
	public @ResponseBody
	Object deleteCustomer(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		if (id != 0) {
			try {
				manager.deleleCustomer(id);
				model.put("success", true);
			} catch (Exception e) {
				model.put("success", false);
			}

		}
		return model;
	}

}
