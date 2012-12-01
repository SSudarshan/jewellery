package com.defysope.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.defysope.dao.BoardRateSettingsDao;
import com.defysope.model.BoardRate;
import com.defysope.service.BoardRateSettingsManager;

@Service
@Transactional
public class BoardRateSettingsManagerImpl implements BoardRateSettingsManager{
	
	@Autowired
	private BoardRateSettingsDao boardRateSettingsDao;

	public List<Map<String, Object>> getBRate() {
		
		return boardRateSettingsDao.getBRate();
	}

	public BoardRate saveBRate(BoardRate rate) {
		
		return boardRateSettingsDao.saveBRate(rate);
	}

	public void removeBRate(int id) {
		boardRateSettingsDao.removeBRate(id);
		
	}
	
	

}
