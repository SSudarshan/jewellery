package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="tblDeliveryMethod")
public class DeliveryMethod {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tbldeliverymethod_cid_gen")
	@SequenceGenerator(name = "tbldeliverymethod_cid_gen", sequenceName = "tbldeliverymethod_cid_seq")
	@Column(name="cid")
	int id;
	
	String description;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	

}
