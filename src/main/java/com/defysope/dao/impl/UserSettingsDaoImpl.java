package com.defysope.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.stereotype.Repository;

import com.defysope.dao.UserSettingsDao;
import com.defysope.model.Company;
import com.defysope.model.Role;

@Repository
public class UserSettingsDaoImpl implements UserSettingsDao {

	@Autowired
	private SessionFactory factory;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@SuppressWarnings("unchecked")
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

	public List<Map<String, Object>> getUserList(Company companyId) {
		String sql = "select a.cid as id,a.firstname as name,a.uername as username,b.description as role "
				+ " from tbluser a inner join tblrole b on b.cid=a.role "
				+ " inner join tblcompany c on c.cid=a.companyid and c.cid=b.companyid where c.cid=?";
		return jdbcTemplate.queryForList(sql, companyId.getId());
	}

	public List<Map<String, Object>> getPagesList() {
		String sql = "select * from tblpageurls";
		return jdbcTemplate.queryForList(sql);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void setAccessRight(final int roleId, List<String> items) {
		String sql = "delete from tblaccessrights where role=" + roleId;
		jdbcTemplate.execute(sql);
		final List<Integer> list = new ArrayList<Integer>();
		for (String item : items) {
			list.add(Integer.parseInt(item));
		}
		sql = "insert into tblaccessrights(role,pages) values(?,?)";
		for (final Integer integer : list) {
			jdbcTemplate.execute(sql, new PreparedStatementCallback() {
				public Object doInPreparedStatement(PreparedStatement ps)
						throws SQLException, DataAccessException {
					ps.setInt(1, roleId);
					ps.setInt(2, integer);
					ps.execute();
					return null;
				}
			});
		}

	}

}
