package com.defysope.dao;

import java.io.Serializable;
import java.util.List;

public interface MasterDao {
	
	public <T> List<T> getObjects(Class<T> clazz);
	public <T> T getObject(Class<T> clazz, Serializable id);
	public void saveObject(Object obj);

}
