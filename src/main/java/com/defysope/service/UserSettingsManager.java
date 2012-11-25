package com.defysope.service;

import java.util.List;
import java.util.Map;

import com.defysope.modal.Role;

public interface UserSettingsManager {

	List<Map<String, Object>> getRoles();

	Role saveRole(Role role);

	void removeRole(int id);

}
