package com.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CustomerAcccountDetails {
	

	@Id
	private int CustId;
	
	@Column(name = "ACCNO")
	private String accNo; 
	private int ContactNo; 
	private int Pincode;
	private String FirstName; 
	private String LastName; 
	private String Email; 
	private String Address; 
	private String City; 
	private String State; 
	private String Country;
	private String Pancard;
		public int getCustId() {
		return CustId;
	}
	public void setCustId(int custId) {
		CustId = custId;
	}
	public String getAccNo() {
		return accNo;
	}
	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}
	public int getContactNo() {
		return ContactNo;
	}
	public void setContactNo(int contactNo) {
		ContactNo = contactNo;
	}
	public int getPincode() {
		return Pincode;
	}
	public void setPincode(int pincode) {
		Pincode = pincode;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getPancard() {
		return Pancard;
	}
	public void setPancard(String pancard) {
		Pancard = pancard;
	}
		public CustomerAcccountDetails(int custId, String accNo, int contactNo, int pincode, String firstName, String lastName,
			String email, String address, String city, String state, String country, String pancard) {
		super();
		CustId = custId;
		this.accNo = accNo;
		ContactNo = contactNo;
		Pincode = pincode;
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		Address = address;
		City = city;
		State = state;
		Country = country;
		Pancard = pancard;
	}
		public CustomerAcccountDetails() {
		super();
	}
}
