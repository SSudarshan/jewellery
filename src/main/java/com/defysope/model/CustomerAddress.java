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
@Table(name="tblcustomeraddress")
public class CustomerAddress {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblcustomeraddress_cid_gen")
	@SequenceGenerator(name = "tblcustomeraddress_cid_gen", sequenceName = "tblcustomeraddress_cid_seq")
	@Column(name = "cid")
	private int id;
	
	@ManyToOne(targetEntity = Customer.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "customerId", nullable = false)
	private Customer customerId;
	
	@ManyToOne(targetEntity = Address.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "contactAddress", nullable = false)
	private Address contactAddress;
	
	@ManyToOne(targetEntity = Address.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "presentAddress", nullable = false)
	private Address presentAddress;
	
	@ManyToOne(targetEntity = Address.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "permanentAddress", nullable = false)
	private Address permanentAddress;
	 
	@ManyToOne(targetEntity = Address.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "deliveryAddress", nullable = false)
	private Address deliveryAddress;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Customer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Customer customerId) {
		this.customerId = customerId;
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

	public Address getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(Address permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public Address getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(Address deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	
	

}
