package com.defysope.service.impl;

import java.io.Serializable;
import java.util.List;

import com.defysope.model.Role;

public interface MasterService {

	public <T> List<T> getObjects(Class<T> clazz);
	
	public <T> T getObject(Class<T> clazz, Serializable id);

	public void saveObject(Object obj);
	
	@SuppressWarnings("rawtypes")
	public void removeObject(Class clazz, Serializable id);

}
