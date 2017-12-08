package com.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CustAccount {

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private Long CustId;

	@Override
	public String toString() {
		return "CustAccount [CustId=" + CustId + ", AccNo=" + AccNo + ", ContactNo=" + ContactNo + ", Pincode="
				+ Pincode + ", FirstName=" + FirstName + ", LastName=" + LastName + ", Email=" + Email + ", Address="
				+ Address + ", City=" + City + ", State=" + State + ", Country=" + Country + ", Pancard=" + Pancard
				+ "]";
	}
	private Long AccNo; 
	private Long ContactNo; 
	private Long Pincode;
	private String FirstName; 
	private String LastName; 
	private String Email; 
	private String Address; 
	private String City; 
	private String State; 
	private String Country;
	private String Pancard;
	public CustAccount(Long custId, Long accNo, Long contactNo, Long pincode, String firstName, String lastName,
			String email, String address, String city, String state, String country, String pancard) {
		super();
		CustId = custId;
		AccNo = accNo;
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

	public Long getCustId() {
		return CustId;
	}

	public void setCustId(Long custId) {
		CustId = custId;
	}

	public Long getAccNo() {
		return AccNo;
	}

	public void setAccNo(Long accNo) {
		AccNo = accNo;
	}

	public Long getContactNo() {
		return ContactNo;
	}

	public void setContactNo(Long contactNo) {
		ContactNo = contactNo;
	}

	public Long getPincode() {
		return Pincode;
	}

	public void setPincode(Long pincode) {
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

	public CustAccount() {
		super();
	}
}
