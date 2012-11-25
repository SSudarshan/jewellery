package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.defysope.dao.UserSettingsDao;
import com.defysope.modal.Role;

@Repository
public class UserSettingsDaoImpl implements UserSettingsDao {

	@Autowired
	private SessionFactory factory;

	public List<Map<String, Object>> getRoles() {
		return factory.getCurrentSession().createCriteria(Role.class).list();
	}

	public Role saveRole(Role role) {
		factory.getCurrentSession().saveOrUpdate(role);
		return role;

	}

	public void removeRole(int id) {
		Role role = (Role) factory.getCurrentSession().load(Role.class, id);
		factory.getCurrentSession().delete(role);

	}

}
