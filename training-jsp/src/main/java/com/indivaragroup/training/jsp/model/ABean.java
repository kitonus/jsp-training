package com.indivaragroup.training.jsp.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class ABean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String name;
	private Date dateOfBirth;
	private BigDecimal savingsAmount;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public BigDecimal getSavingsAmount() {
		return savingsAmount;
	}
	public void setSavingsAmount(BigDecimal savingsAmount) {
		this.savingsAmount = savingsAmount;
	}
	
	
}
