package com.defysope.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import com.defysope.service.CustomerTypeSettingsManager;

@Controller
public class ViewPurchaseController {

	@Autowired
	private CustomerTypeSettingsManager manager;

	@RequestMapping(value = "/inventory/viewProduct.html", method = RequestMethod.GET)
	public ModelAndView viewPurchase(HttpServletRequest request) {
		Map<String,Object> model= new HashMap<String, Object>();
		return new ModelAndView("viewPurchase",model);
	}

	@RequestMapping(value = "/viewPurchase/list.html")
	public @ResponseBody
	Object addUser(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<String, Object>();
		int page = Integer.parseInt(request.getParameter("page"));
		int rows = Integer.parseInt(request.getParameter("rows"));
		List<Map<String, Object>> list = manager.getPurchaseDatas();
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

}
