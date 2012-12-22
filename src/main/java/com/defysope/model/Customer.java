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
@Table(name = "tblcustomer")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblcustomer_cid_gen")
	@SequenceGenerator(name = "tblcustomer_cid_gen", sequenceName = "tblcustomer_cid_seq")
	@Column(name = "cid")
	private int id;

	@ManyToOne(targetEntity = FinancialMonth.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "monthId", nullable = true)
	private FinancialMonth monthId;

	@ManyToOne(targetEntity = Company.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "companyId", nullable = true)
	private Company companyId;

	@ManyToOne(targetEntity = CustomerType.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "customerType", nullable = true)
	private CustomerType customerType;

	private String firstName;
	private String lastName;
	private String gender;
	private int age;
	private String designation;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public FinancialMonth getMonthId() {
		return monthId;
	}

	public void setMonthId(FinancialMonth monthId) {
		this.monthId = monthId;
	}

	public Company getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Company companyId) {
		this.companyId = companyId;
	}

	public CustomerType getCustomerType() {
		return customerType;
	}

	public void setCustomerType(CustomerType customerType) {
		this.customerType = customerType;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

}
