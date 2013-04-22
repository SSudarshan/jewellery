package com.defysope.model;

import java.util.Date;

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
@Table(name = "tblpurchase")
public class Purchase {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblpurchase_cid_gen")
	@SequenceGenerator(name = "tblpurchase_cid_gen", sequenceName = "tblpurchase_cid_seq")
	@Column(name = "cid")
	private int id;

	@ManyToOne(targetEntity = SupplierVendor.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "supplierid")
	private SupplierVendor supplier;

	@ManyToOne(targetEntity = Warehouse.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "warehouseid")
	private Warehouse warehouse;

	@Column(name = "orderdate")
	private Date orderDate;

	@Column(name = "deliverydate")
	private Date deliveryDate;

	@Column(name = "modifieddate")
	private Date modifiedDate;

	@ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "empid")
	private User empId;

	@ManyToOne(targetEntity = Company.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "companyId")
	private Company companyId;

	@Column(name = "status")
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public SupplierVendor getSupplier() {
		return supplier;
	}

	public void setSupplier(SupplierVendor supplier) {
		this.supplier = supplier;
	}

	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public User getEmpId() {
		return empId;
	}

	public void setEmpId(User empId) {
		this.empId = empId;
	}

	public Company getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Company companyId) {
		this.companyId = companyId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
