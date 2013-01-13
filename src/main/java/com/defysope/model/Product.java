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
@Table(name = "tblproduct")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblproduct_cid_gen")
	@SequenceGenerator(name = "tblproduct_cid_gen", sequenceName = "tblproduct_cid_seq")
	@Column(name = "cid")
	private int id;
	private Integer productgroup;
	private String code;
	private String description;
	private String barCode;
	private String modelNo;
	@ManyToOne(targetEntity = Brand.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "brand")
	private Brand brand;
	@ManyToOne(targetEntity = UnitOfMeasurement.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "uom")
	private UnitOfMeasurement uom;
	private Double weight;
	private Double avgLandCost;
	private Double lastCost;
	private Double purchasePrice;
	private Double sellPrice;
	private String fileName;
	private byte[] attachment;
	private String notes;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getProductgroup() {
		return productgroup;
	}

	public void setProductgroup(Integer productgroup) {
		this.productgroup = productgroup;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getBarCode() {
		return barCode;
	}

	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}

	public String getModelNo() {
		return modelNo;
	}

	public void setModelNo(String modelNo) {
		this.modelNo = modelNo;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public UnitOfMeasurement getUom() {
		return uom;
	}

	public void setUom(UnitOfMeasurement uom) {
		this.uom = uom;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Double getAvgLandCost() {
		return avgLandCost;
	}

	public void setAvgLandCost(Double avgLandCost) {
		this.avgLandCost = avgLandCost;
	}

	public Double getLastCost() {
		return lastCost;
	}

	public void setLastCost(Double lastCost) {
		this.lastCost = lastCost;
	}

	public Double getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(Double purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public Double getSellPrice() {
		return sellPrice;
	}

	public void setSellPrice(Double sellPrice) {
		this.sellPrice = sellPrice;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public byte[] getAttachment() {
		return attachment;
	}

	public void setAttachment(byte[] attachment) {
		this.attachment = attachment;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

}
