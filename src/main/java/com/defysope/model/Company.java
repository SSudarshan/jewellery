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
@Table(name = "tblCompany")
public class Company {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblcompany_cid_gen")
	@SequenceGenerator(name = "tblcompany_cid_gen", sequenceName = "tblcompany_cid_seq")
	@Column(name = "cid")
	private int id;
	private String companyName;
	private String tradingName;
	private String companyId;
	private String regdNumber;
	private String website;
	private String salesEmail;
	private String purchaseEmail;
	private String address1;
	private String address2;
	private String city;
	private String phone1;
	private String phone2;
	private String mobile;
	@ManyToOne(targetEntity = State.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "state", nullable = true)
	private State state;
	@ManyToOne(targetEntity = Country.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "country", nullable = true)
	private Country country;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getTradingName() {
		return tradingName;
	}

	public void setTradingName(String tradingName) {
		this.tradingName = tradingName;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getRegdNumber() {
		return regdNumber;
	}

	public void setRegdNumber(String regdNumber) {
		this.regdNumber = regdNumber;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getSalesEmail() {
		return salesEmail;
	}

	public void setSalesEmail(String salesEmail) {
		this.salesEmail = salesEmail;
	}

	public String getPurchaseEmail() {
		return purchaseEmail;
	}

	public void setPurchaseEmail(String purchaseEmail) {
		this.purchaseEmail = purchaseEmail;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

}
