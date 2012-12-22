package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.fasterxml.jackson.core.sym.Name;

@Entity
@Table(name="tblDeliveryMethod")
public class DeliveryMethod {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tbldeliverymethod_cid_gen")
	@SequenceGenerator(name = "tbldeliverymethod_cid_gen", sequenceName = "tbldeliverymethod_cid_seq")
	@Column(name="cid")
	int id;
	
	String deliveryMehtod;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDeliveryMehtod() {
		return deliveryMehtod;
	}

	public void setDeliveryMehtod(String deliveryMehtod) {
		this.deliveryMehtod = deliveryMehtod;
	}
	
	

}
