package com.defysope.dummy;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.defysope.model.Country;
import com.defysope.model.State;

public class DeliveryAddress {
	
	private int id;
	private String deliveryEmail;
	private String deliveryAddress1;
	private String deliveryAddress2;
	private String deliveryAddress3;
	private String deliveryCity;
	private String deliveryPin;
	private Integer deliveryPhone1;
	private Integer deliveryPhone2;
	private Integer deliveryMobile;
	private Integer deliveryFax;
	private Integer deliveryExtno;
	private String deliveryName;
	@ManyToOne(targetEntity = State.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "state", nullable = true)
	private State deliveryState;

	@ManyToOne(targetEntity = Country.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "country", nullable = true)
	private Country deliveryCountry;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDeliveryEmail() {
		return deliveryEmail;
	}

	public void setDeliveryEmail(String deliveryEmail) {
		this.deliveryEmail = deliveryEmail;
	}

	public String getDeliveryAddress1() {
		return deliveryAddress1;
	}

	public void setDeliveryAddress1(String deliveryAddress1) {
		this.deliveryAddress1 = deliveryAddress1;
	}

	public String getDeliveryAddress2() {
		return deliveryAddress2;
	}

	public void setDeliveryAddress2(String deliveryAddress2) {
		this.deliveryAddress2 = deliveryAddress2;
	}

	public String getDeliveryAddress3() {
		return deliveryAddress3;
	}

	public void setDeliveryAddress3(String deliveryAddress3) {
		this.deliveryAddress3 = deliveryAddress3;
	}

	public String getDeliveryCity() {
		return deliveryCity;
	}

	public void setDeliveryCity(String deliveryCity) {
		this.deliveryCity = deliveryCity;
	}

	public String getDeliveryPin() {
		return deliveryPin;
	}

	public void setDeliveryPin(String deliveryPin) {
		this.deliveryPin = deliveryPin;
	}

	public Integer getDeliveryPhone1() {
		return deliveryPhone1;
	}

	public void setDeliveryPhone1(Integer deliveryPhone1) {
		this.deliveryPhone1 = deliveryPhone1;
	}

	public Integer getDeliveryPhone2() {
		return deliveryPhone2;
	}

	public void setDeliveryPhone2(Integer deliveryPhone2) {
		this.deliveryPhone2 = deliveryPhone2;
	}

	public Integer getDeliveryMobile() {
		return deliveryMobile;
	}

	public void setDeliveryMobile(Integer deliveryMobile) {
		this.deliveryMobile = deliveryMobile;
	}

	public Integer getDeliveryFax() {
		return deliveryFax;
	}

	public void setDeliveryFax(Integer deliveryFax) {
		this.deliveryFax = deliveryFax;
	}

	public Integer getDeliveryExtno() {
		return deliveryExtno;
	}

	public void setDeliveryExtno(Integer deliveryExtno) {
		this.deliveryExtno = deliveryExtno;
	}

	public String getDeliveryName() {
		return deliveryName;
	}

	public void setDeliveryName(String deliveryName) {
		this.deliveryName = deliveryName;
	}

	public State getDeliveryState() {
		return deliveryState;
	}

	public void setDeliveryState(State deliveryState) {
		this.deliveryState = deliveryState;
	}

	public Country getDeliveryCountry() {
		return deliveryCountry;
	}

	public void setDeliveryCountry(Country deliveryCountry) {
		this.deliveryCountry = deliveryCountry;
	}
	
	
	
	

}
