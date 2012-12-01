package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.model.BoardRate;

public interface BoardRateSettingsDao {
	
	List<Map<String, Object>> getBRate();
	
	BoardRate saveBRate(BoardRate rate);
	
	void removeBRate(int id);

}
