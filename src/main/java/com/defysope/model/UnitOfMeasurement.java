package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tbluom")
public class UnitOfMeasurement {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tbluom_cid_gen")
	@SequenceGenerator(name = "tbluom_cid_gen", sequenceName = "tbluom_cid_seq")
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
