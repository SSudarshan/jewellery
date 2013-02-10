package com.defysope.core;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import freemarker.template.Template;
import freemarker.template.TemplateException;

public class ControllerUtils {
	private static Log log = LogFactory.getLog(ControllerUtils.class);

	
	public static void openFile(String path, HttpServletResponse res,
			String fileName) throws FileNotFoundException, IOException {
		path = path + "/" + fileName;
		File file = new File(path);
		if (file.exists()) {
			int length = (int) file.length();
			FileInputStream fis = new FileInputStream(file);

			sendStream(res, fileName, fis, length);
		} else {
			res.setContentType("text/html");
			PrintWriter out = res.getWriter();
			out.write("<font size='5' color='red'>File not found: " + fileName
					+ "</font>");
			log.error("File not found:" + path);
		}
	}

	public static void sendStream(HttpServletResponse response,
			String fileName, InputStream fis, int length) throws IOException {
		writeFileUploadHeaders(response, fileName, length);
		ServletOutputStream ouputStream = response.getOutputStream();
		try {
			int b;
			while ((b = fis.read()) != -1) {
				ouputStream.write(b);
			}
		} finally {
			ouputStream.flush();
			ouputStream.close();
			fis.close();
		}
	}

	public static void writeFileUploadHeaders(HttpServletResponse response,
			String fileName, int length) {
		String contentType = getContentType(fileName);
		String disHeader = "Attachment;Filename=\"" + fileName + "\"";
		response.setContentType(contentType);
		response.setHeader("Content-Disposition", disHeader);
		response.setHeader("Cache-Control", "private, max-age=5");

		/*
		 * The Pragma header value no-cache will cause download of files in IE
		 * to fail if we are using SSL. If we set the security constraint as
		 * CONFIDENTIAL then Apache Tomcat will add the cache headers
		 * `Cache-Control` and `Pragma` if they are not present in the response
		 * headers. This will cause download in IE to fail. In order to solve
		 * this issue we are setting the Pragma values as an empty string("").
		 * This seems to be working fine in the given test cases.
		 * 
		 * 
		 * Ref: http://geekcredential.wordpress.com/2009/04/21/grails-file
		 * -serving-controller-and-tomcat-ssl-problem/
		 */
		response.setHeader("Pragma", "");
		if (length != -1) {
			response.setContentLength(length);
		}
	}

	public static String getContentType(String fileName) {
		String contentType = "application/";
		String fileExtension = fileName
				.substring(fileName.lastIndexOf('.') + 1).toUpperCase();
		if ("XLS".equals(fileExtension) || "XLSX".equals(fileExtension)) {
			contentType = contentType + "vnd.ms-excel";
		} else if ("DOC".equals(fileExtension) || "DOCX".equals(fileExtension)) {
			contentType = contentType + "msword";
		} else if ("PDF".equals(fileExtension)) {
			contentType = contentType + "pdf";
		} else if ("RTF".equals(fileExtension)) {
			contentType = contentType + "msword";
		} else if ("PPS".equals(fileExtension)) {
			contentType = contentType + "vnd.ms-powerpoint";
		} else if ("PPT".equals(fileExtension) || "PPTX".equals(fileExtension)) {
			contentType = contentType + "vnd.ms-powerpoint";
		} else if ("JPG".equals(fileExtension)) {
			contentType = "image/jpeg";
		} else if ("GIF".equals(fileExtension) || "BMP".equals(fileExtension)) {
			contentType = "image/" + fileExtension;
		} else if ("ZIP".equals(fileExtension)) {
			contentType += "zip";
		} else {
			contentType = "text/HTML";
		}
		return contentType;
	}

}
