package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="tblWarehouse")
public class Warehouse {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblwarehouse_cid_gen")
	@SequenceGenerator(name = "tblwarehouse_cid_gen", sequenceName = "tblwarehouse_cid_seq")
	@Column(name="cid")
	int id;
	
	String warehouse;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(String warehouse) {
		this.warehouse = warehouse;
	}
	
	
}
