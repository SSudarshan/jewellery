package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="tblProductGroup")
public class ProductGroup {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblproductgroup_cid_gen")
	@SequenceGenerator(name = "tblproductgroup_cid_gen", sequenceName = "tblproductgroup_cid_seq")
	@Column(name="cid")
	int id;
	String groupName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
	
	
	

}
