package com.defysope.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tblBoardRate")
public class BoardRate {
	
	@Id
	@GeneratedValue
	@Column(name="bRateId")
	int id;
	String categoryName;
	String quantity;
	String boardRate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getBoardRate() {
		return boardRate;
	}
	public void setBoardRate(String boardRate) {
		this.boardRate = boardRate;
	}
	
	
	

}
