package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.User;
import com.defysope.model.Warehouse;
import com.defysope.service.WarehouseSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class AddWareHouseController {

	@Autowired
	private WarehouseSettingsManager warehouseSettingsManager;

	@Autowired
	private MasterService masterService;

	@RequestMapping(value = "/addWarehouse", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("houseList", warehouseSettingsManager.getWarehouse());
		return new ModelAndView("addWarehouse", model);
	}

	@RequestMapping(value = "/saveWarehouse", method = RequestMethod.POST)
	public @ResponseBody
	Object addWarehouse(HttpServletRequest request,
			@ModelAttribute("whouse") Warehouse whouse) {
		User user = (User) request.getSession().getAttribute("user");
		whouse.setCompanyid(user.getCompanyId().getId());
		masterService.saveObject(whouse);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("savedWarehouse", whouse);
		return model;

	}

	@RequestMapping(value = "/deleteWarehouse", method = RequestMethod.POST)
	public @ResponseBody
	Object deleteWarehouse(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			warehouseSettingsManager.removeWarehouse(id);
			model.put("success", true);
		} catch (Exception e) {
			model.put("success", false);
		}

		return model;

	}

}
