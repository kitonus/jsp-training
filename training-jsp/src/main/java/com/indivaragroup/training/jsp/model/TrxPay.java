package com.indivaragroup.training.jsp.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.UUID;

import org.springframework.format.annotation.DateTimeFormat;

public class TrxPay {
	UUID trxId = UUID.randomUUID();
	String trxType;
	BigDecimal amount;
	
	Date trxTimestamp;

	public UUID getTrxId() {
		return trxId;
	}

	public void setTrxId(UUID trxId) {
		this.trxId = trxId;
	}

	public String getTrxType() {
		return trxType;
	}

	public void setTrxType(String trxType) {
		this.trxType = trxType;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Date getTrxTimestamp() {
		return trxTimestamp;
	}

	public void setTrxTimestamp(Date trxTimestamp) {
		this.trxTimestamp = trxTimestamp;
	}
	
	
}
