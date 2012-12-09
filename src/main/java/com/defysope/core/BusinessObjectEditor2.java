package com.defysope.core;

import java.sql.Types;

import com.defysope.service.impl.MasterService;

public class BusinessObjectEditor2 extends BusinessObjectEditor {
	public BusinessObjectEditor2(MasterService manager, Class clazz) {
		super(manager, clazz);
	}

	public BusinessObjectEditor2(MasterService manager, Class clazz, int type) {
		super(manager, clazz, type);
	}

	@Override
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
}
