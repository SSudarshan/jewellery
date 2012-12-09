package com.defysope.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.MasterDao;

@Service
@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
public class MasterServiceImpl implements MasterService{
	
	@Autowired
	private MasterDao masterDao;

	public <T> List<T> getObjects(Class<T> clazz) {
		return masterDao.getObjects(clazz);
	}

	public <T> T getObject(Class<T> clazz, Serializable id) {
		return masterDao.getObject(clazz,id);
	}

	@Transactional(readOnly = false, propagation = Propagation.REQUIRED)
	public void saveObject(Object obj) {
		masterDao.saveObject(obj);
		
	}

}
