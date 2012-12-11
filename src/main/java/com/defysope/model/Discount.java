package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="tbldiscount")
public class Discount {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tbldiscount_cid_gen")
	@SequenceGenerator(name = "tbldiscount_cid_gen", sequenceName = "tbldiscount_cid_seq")
	@Column(name="cid")
	private int id;
	
	private String scheme;
	
	private int discountpercent;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getScheme() {
		return scheme;
	}
	public void setScheme(String scheme) {
		this.scheme = scheme;
	}
	public int getDiscountpercent() {
		return discountpercent;
	}
	public void setDiscountpercent(int discountpercent) {
		this.discountpercent = discountpercent;
	}
	
	

}
