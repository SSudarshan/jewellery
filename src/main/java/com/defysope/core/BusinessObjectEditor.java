package com.defysope.core;

import java.beans.PropertyEditorSupport;
import java.sql.Types;

import com.defysope.service.impl.MasterService;

public class BusinessObjectEditor extends PropertyEditorSupport {

	protected MasterService manager;

	protected Class clazz;

	protected int types;

	public BusinessObjectEditor(MasterService manager, Class clazz) {
		super();
		this.manager = manager;
		this.clazz = clazz;
	}

	public BusinessObjectEditor(MasterService manager, Class clazz, int type) {
		super();
		this.manager = manager;
		this.clazz = clazz;
		this.types = type;
	}

	public BusinessObjectEditor(Object source) {
		super(source);
	}

	public void setAsText(String text) throws IllegalArgumentException {
		if (this.types == Types.VARCHAR) {
			if (!"0".equals(text)) {
				setValue(manager.getObject(clazz, text));
			} else {
				setValue(null);
			}
		} else {
			int id = Integer.parseInt(text);
			if (id == 0) {
				setValue(null);
			} else {
				setValue(manager.getObject(clazz, new Integer(id)));
			}
		}
	}

	public String getAsText() {
		KeyValueObject obj = (KeyValueObject) getValue();
		return obj == null ? "0" : obj.getMapKey();
	}

}
