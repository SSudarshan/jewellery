package com.defysope.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.MasterDao;

@Repository
public class MasterDaoImpl implements MasterDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public <T> List<T> getObjects(Class<T> clazz) {
		return sessionFactory.getCurrentSession().createCriteria(clazz).list();
	}

	@SuppressWarnings("unchecked")
	public <T> T getObject(Class<T> clazz, Serializable id) {
		return ((T) sessionFactory.getCurrentSession().get(clazz, id));
	}

	public void saveObject(Object obj) {
		sessionFactory.getCurrentSession().saveOrUpdate(obj);

	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void removeObject(Class clazz, Serializable id) {
		sessionFactory.getCurrentSession().delete(getObject(clazz, id));

	}
}
