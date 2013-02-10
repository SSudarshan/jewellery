package com.defysope.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.defysope.service.impl.MasterService;

@Controller
public class ViewSupplierController {
	
	@Autowired
	private MasterService service;


}
