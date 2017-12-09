package com.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Designation {

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int designationId;
	
	private String designation;

	
	public int getDesignationId() {
		return designationId;
	}


	public void setDesignationId(int designationId) {
		this.designationId = designationId;
	}


	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public Designation(int designationId, String designation) {
		super();
		this.designationId = designationId;
		this.designation = designation;
	}


	public Designation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
