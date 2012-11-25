package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.modal.Role;

public interface UserSettingsDao {

	List<Map<String, Object>> getRoles();

	Role saveRole(Role role);

	void removeRole(int id);
}
