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
@Table(name = "tblpurchaseItems")
public class PurchaseItems {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "tblpurchaseItems_cid_gen")
	@SequenceGenerator(name = "tblpurchaseItems_cid_gen", sequenceName = "tblpurchaseItems_cid_seq")
	@Column(name = "cid")
	private int id;

	@ManyToOne(targetEntity = Purchase.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "purchaseid")
	private Purchase purchaseId;

	@ManyToOne(targetEntity = Product.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "productid")
	private Product productId;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "price")
	private double price;

	@Column(name = "comments")
	private String comments;

	@Column(name = "status")
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Purchase getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(Purchase purchaseId) {
		this.purchaseId = purchaseId;
	}

	public Product getProductId() {
		return productId;
	}

	public void setProductId(Product productId) {
		this.productId = productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
