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
@Table(name = "tbluser")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tbluser_cid_gen")
	@SequenceGenerator(name = "tbluser_cid_gen", sequenceName = "tbluser_cid_seq")
	@Column(name = "cid")
	private int id;

	private String uerName;
	private String password;
	private String email;
	private String firstname;
	private String lastname;

	@ManyToOne(targetEntity = Company.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "companyId")
	private Company companyId;

	@ManyToOne(targetEntity = Role.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "role")
	private Role role;

	public String getUerName() {
		return uerName;
	}

	public void setUerName(String uerName) {
		this.uerName = uerName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Company getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Company companyId) {
		this.companyId = companyId;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public User() {
	}

	public User(String firstname, String lastname) {
		this.firstname = firstname;
		this.lastname = lastname;

	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}