package com.defysope.dao.impl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.stereotype.Repository;

import com.defysope.dao.ProductGroupSettingsDao;
import com.defysope.model.ProductAttachment;
import com.defysope.model.ProductGroup;

@Repository
public class ProductGroupSettingsDaoImpl implements ProductGroupSettingsDao {

	@Autowired
	private SessionFactory factory;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getPGroup() {

		return factory.getCurrentSession().createCriteria(ProductGroup.class)
				.list();
	}

	public ProductGroup savePGroup(ProductGroup group) {
		factory.getCurrentSession().saveOrUpdate(group);
		return group;
	}

	public void removePGroup(int id) {
		ProductGroup group = (ProductGroup) factory.getCurrentSession().load(
				ProductGroup.class, id);
		factory.getCurrentSession().delete(group);

	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void saveProductAttachment(final int productId,
			final ProductAttachment file) {
		String sql = "update tblproduct set filename = ? ,attachment=? where cid=?";
		jdbcTemplate.execute(sql, new PreparedStatementCallback() {
			public Object doInPreparedStatement(
					final PreparedStatement pSstatement) throws SQLException,
					DataAccessException {
				pSstatement.setString(1, file.getFile().getOriginalFilename());

				try {
					pSstatement.setBinaryStream(2, new ByteArrayInputStream(
							file.getFile().getBytes()), file.getFile()
							.getBytes().length);
				} catch (IOException e) {
					e.printStackTrace();
				}
				pSstatement.setInt(3, productId);

				pSstatement.execute();
				return null;
			}
		});

	}

	public List<Map<String, Object>> getProductList() {
		String sql = "select product.cid as id ,product.code,product.description,product.sellprice,product.filename,uom.description as uom,"
				+ "brand.description as brand,grp.description as grp from tblproduct product,tblbrand brand,tbluom uom,"
				+ "tblproductgroup grp where product.uom=uom.cid and product.brand=brand.cid and product.productgroup=grp.cid";
		return jdbcTemplate.queryForList(sql);
	}

}
