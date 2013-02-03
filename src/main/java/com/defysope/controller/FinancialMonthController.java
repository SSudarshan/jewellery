package com.defysope.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.model.FinancialMonth;
import com.defysope.service.impl.MasterService;

@Controller
public class FinancialMonthController {

	@Autowired
	private MasterService masterService;

	@RequestMapping(value = "/inventory/financialMonth", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("finMonths", masterService.getObjects(FinancialMonth.class));
		return new ModelAndView("financialMonth", model);
	}

}
