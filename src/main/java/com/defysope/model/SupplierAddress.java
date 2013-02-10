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
@Table(name="tblsupplieraddress")
public class SupplierAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblsupplieraddress_cid_gen")
	@SequenceGenerator(name = "tblsupplieraddress_cid_gen", sequenceName = "tblsupplieraddress_cid_seq")
	@Column(name = "cid")
	private int id;
	
	@ManyToOne(targetEntity = SupplierVendor.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "supplierid", nullable = false)
	private SupplierVendor supplierid;
	
	@ManyToOne(targetEntity = Address.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "contactAddress", nullable = false)
	private Address contactAddress;
	
	@ManyToOne(targetEntity = Address.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "presentAddress", nullable = false)
	private Address presentAddress;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public SupplierVendor getSupplierid() {
		return supplierid;
	}

	public void setSupplierid(SupplierVendor supplierid) {
		this.supplierid = supplierid;
	}

	public Address getContactAddress() {
		return contactAddress;
	}

	public void setContactAddress(Address contactAddress) {
		this.contactAddress = contactAddress;
	}

	public Address getPresentAddress() {
		return presentAddress;
	}

	public void setPresentAddress(Address presentAddress) {
		this.presentAddress = presentAddress;
	}

	
	
}
