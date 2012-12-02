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
@Table(name = "tblstate")
public class State {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblstate_cid_gen")
	@SequenceGenerator(name = "tblstate_cid_gen", sequenceName = "tblstate_cid_seq")
	@Column(name = "cid")
	private int id;

	@ManyToOne(targetEntity = Country.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "country", nullable = false)
	private Country country;

	private String description;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
