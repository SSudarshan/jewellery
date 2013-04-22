package com.defysope.dao.impl;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.defysope.dao.CustomerTypeSettingsDao;
import com.defysope.model.CustomerType;

@Repository
public class CustomerTypeSettingsDaoImpl implements CustomerTypeSettingsDao {

	@Autowired
	private SessionFactory factory;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Map<String, Object>> getCType() {

		return factory.getCurrentSession().createCriteria(CustomerType.class)
				.list();
	}

	public CustomerType saveCtype(CustomerType type) {

		factory.getCurrentSession().saveOrUpdate(type);
		return type;
	}

	public void removeCType(int id) {

		CustomerType type = (CustomerType) factory.getCurrentSession().load(
				CustomerType.class, id);
		factory.getCurrentSession().delete(type);

	}

	public List<Map<String, Object>> getGridData(int customerType) {

		String sql = " select cus.cid as id,cus.firstname,cus.lastname,cus.age,custype.description,add.city,add.email,add.mobile from tblcustomer cus left outer join tblcustomertype custype on custype.cid=cus.customertype"
				+ " left outer join tblcustomeraddress cusadd on cus.cid=cusadd.customerid left outer join tbladdress add on cusadd.contactaddress=add.cid";
		if (customerType > 0) {
			sql += " where custype.cid = " + customerType;
		}
		return jdbcTemplate.queryForList(sql);
	}

	public List<Map<String, Object>> getPurchaseDatas() {
		String sql = " select pse.cid as id,sup.supliername as supplier, war.description,"
				+ "pse.orderdate,pse.deliverydate,pse.status from tblpurchase pse "
				+ "inner join tblsuppliervendor sup on pse.supplierid=sup.cid "
				+ "inner join tblwarehouse war on pse.warehouseid= war.cid";
		return jdbcTemplate.queryForList(sql);
	}

	public void setDataSource(DataSource ds) {
		// TODO Auto-generated method stub

	}

	public void deleleCustomer(int id) {
		String sql = "delete from tbladdress where cid in (select contactaddress from tblcustomeraddress where customerid="
				+ id + ")";
		jdbcTemplate.execute(sql);
		sql = "delete from tbladdress where cid in (select deliveryaddress from tblcustomeraddress where customerid="
				+ id + ")";
		jdbcTemplate.execute(sql);
		sql = "delete from tblcustomeraddress where customerid=" + id;
		jdbcTemplate.execute(sql);
		sql = "delete from tblcustomer where cid = " + id;
		jdbcTemplate.execute(sql);

	}

}
