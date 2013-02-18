package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tbldiscount")
public class Discount {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tbldiscount_cid_gen")
	@SequenceGenerator(name = "tbldiscount_cid_gen", sequenceName = "tbldiscount_cid_seq")
	@Column(name = "cid")
	private int id;

	@ManyToOne(targetEntity = ProductGroup.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "productgroup")
	private ProductGroup productGroup;
	@ManyToOne(targetEntity = Product.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "product")
	private Product product;
	private String scheme;
	private int discount;

	int discountpercent;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ProductGroup getProductGroup() {
		return productGroup;
	}

	public void setProductGroup(ProductGroup productGroup) {
		this.productGroup = productGroup;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getScheme() {
		return scheme;
	}

	public void setScheme(String scheme) {
		this.scheme = scheme;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

}
