package com.defysope.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defysope.core.ControllerUtils;
import com.defysope.model.Product;
import com.defysope.model.Role;
import com.defysope.service.ProductGroupSettingsManager;
import com.defysope.service.impl.MasterService;

@Controller
public class ViewProductController {

	@Autowired
	private ProductGroupSettingsManager productGroupSettingsManager;

	@Autowired
	private MasterService masterService;

	@RequestMapping(value = "/inventory/viewProduct.html", method = RequestMethod.GET)
	public ModelAndView index(@ModelAttribute("model") ModelMap model) {
		return new ModelAndView("viewProduct", model);
	}

	@RequestMapping(value = "/inventory/productList")
	public @ResponseBody
	Object addUser(HttpServletRequest request, @ModelAttribute("role") Role role) {
		Map<String, Object> model = new HashMap<String, Object>();
		int page = Integer.parseInt(request.getParameter("page"));
		int rows = Integer.parseInt(request.getParameter("rows"));
		List<Map<String, Object>> list = productGroupSettingsManager
				.getProductList();
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

	@RequestMapping(value = "/inventory/downloadAttachment")
	public void downloadDeclaredAttachment(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		int id = NumberUtils.toInt(request.getParameter("id"));
		try {

			byte[] byteBuf = masterService.getObject(Product.class, id)
					.getAttachment();

			ControllerUtils
					.writeFileUploadHeaders(response,
							masterService.getObject(Product.class, id)
									.getFileName(), byteBuf.length);

			ControllerUtils.sendStream(response,
					masterService.getObject(Product.class, id).getFileName(),
					new ByteArrayInputStream(byteBuf), byteBuf.length);
		} catch (Exception e) {
			e.printStackTrace();
			response.getOutputStream().print(
					"Error while fetching attachment..");
		} finally {
		}

	}
}
