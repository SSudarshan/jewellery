package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.defysope.dao.LoginDao;
import com.defysope.model.Company;
import com.defysope.model.User;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private SessionFactory factory;

	public boolean checkCompIdAvailability(String value) {
		String sql = "select * from tblcompany where companyid = ?";
		return jdbcTemplate.queryForList(sql, value.trim()).size() > 0 ? false
				: true;
	}

	public Company getCompany(String companyId) {
		Criteria criteria = factory.getCurrentSession().createCriteria(
				Company.class);
		criteria.add(Restrictions.eq("companyId", companyId));

		return (Company) (criteria.list().size() > 0 ? criteria.list().get(0)
				: null);
	}

	public User validateUser(Company company, String userName, String password) {
		Criteria criteria = factory.getCurrentSession().createCriteria(
				User.class);
		criteria.add(Restrictions.eq("uerName", userName));
		criteria.add(Restrictions.eq("password", password));
		criteria.add(Restrictions.eq("companyId.id", company.getId()));
		return (User) (criteria.list().size() > 0 ? criteria.list().get(0)
				: null);
	}

	public List<Map<String, Object>> getPageAccessUrl(int roleId) {
		String sql = "select page.url,page.description,page.module from tblaccessrights access inner join tblpageurls page on page.cid=access.pages where access.role=?";
		return jdbcTemplate.queryForList(sql, roleId);
	}

}
