package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.BoardRateSettingsDao;
import com.defysope.model.BoardRate;

@Repository
public class BoardRateSettingsDaoImpl implements BoardRateSettingsDao {

	@Autowired
	private SessionFactory factory;
	public List<Map<String, Object>> getBRate() {
		
		return factory.getCurrentSession().createCriteria(BoardRate.class).list();
	}

	public BoardRate saveBRate(BoardRate rate) {
		factory.getCurrentSession().saveOrUpdate(rate);
		return rate;
	}

	public void removeBRate(int id) {
		BoardRate rate=(BoardRate) factory.getCurrentSession().load(BoardRate.class, id);
		factory.getCurrentSession().delete(rate);
		
	}

}
