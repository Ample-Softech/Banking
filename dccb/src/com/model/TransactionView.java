package com.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TransactionView {
	
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int AccNo;
	
	private String Title;
	private String Type;
	private String Method;
	private int Amount;
	private String Status;
	
	
	public int getAccNo() {
		return AccNo;
	}


	public void setAccNo(int accNo) {
		AccNo = accNo;
	}


	public String getTitle() {
		return Title;
	}


	public void setTitle(String title) {
		Title = title;
	}


	public String getType() {
		return Type;
	}


	public void setType(String type) {
		Type = type;
	}


	public String getMethod() {
		return Method;
	}


	public void setMethod(String method) {
		Method = method;
	}


	public int getAmount() {
		return Amount;
	}


	public void setAmount(int amount) {
		Amount = amount;
	}


	public String getStatus() {
		return Status;
	}


	public void setStatus(String status) {
		Status = status;
	}


	public TransactionView(int accNo, String title, String type, String method, int amount, String status) {
		super();
		AccNo = accNo;
		Title = title;
		Type = type;
		Method = method;
		Amount = amount;
		Status = status;
	}


	public TransactionView() {
		super();
	}
	
	}
