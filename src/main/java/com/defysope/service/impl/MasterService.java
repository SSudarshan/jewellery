package com.defysope.service.impl;

import java.io.Serializable;
import java.util.List;

public interface MasterService {

	public <T> List<T> getObjects(Class<T> clazz);
	
	public <T> T getObject(Class<T> clazz, Serializable id);

	public void saveObject(Object obj);
}
