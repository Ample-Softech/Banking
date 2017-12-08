package com.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;

@Entity
public class EmpRegistration {
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int EmpId;	
	private String Name;
	private String FatherName;
	private String PFAccNo;
	private String Email;
	private String Designation;
	private String Experience;
	private String MobileNumber;
	private Date DOB;
	private Date DateOfJoining;
	private String Gender;
	private String MarriedStatus;
	private String Country;
	private String State;
	private String City;
	private String Pincode;

	public int getEmpId() {
		return EmpId;
	}
	public void setEmpId(int empId) {
		EmpId = empId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getFatherName() {
		return FatherName;
	}
	public void setFatherName(String fatherName) {
		FatherName = fatherName;
	}
	public String getPFAccNo() {
		return PFAccNo;
	}
	public void setPFAccNo(String pFAccNo) {
		PFAccNo = pFAccNo;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	public String getExperience() {
		return Experience;
	}
	public void setExperience(String experience) {
		Experience = experience;
	}
	public String getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		MobileNumber = mobileNumber;
	}
	public Date getDOB() {
		return DOB;
	}
	public void setDOB(Date dOB) {
		DOB = dOB;
	}
	public Date getDateOfJoining() {
		return DateOfJoining;
	}
	public void setDateOfJoining(Date dateOfJoining) {
		DateOfJoining = dateOfJoining;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getMarriedStatus() {
		return MarriedStatus;
	}
	public void setMarriedStatus(String marriedStatus) {
		MarriedStatus = marriedStatus;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getPincode() {
		return Pincode;
	}
	public void setPincode(String pincode) {
		Pincode = pincode;
	}
	
	public EmpRegistration(int empId, String name, String fatherName, String pFAccNo, String email, String designation,
			String experience, String mobileNumber, Date dOB, Date dateOfJoining, String gender, String marriedStatus,
			String country, String state, String city, String pincode) {
		super();
		EmpId = empId;
		Name = name;
		FatherName = fatherName;
		PFAccNo = pFAccNo;
		Email = email;
		Designation = designation;
		Experience = experience;
		MobileNumber = mobileNumber;
		DOB = dOB;
		DateOfJoining = dateOfJoining;
		Gender = gender;
		MarriedStatus = marriedStatus;
		Country = country;
		State = state;
		City = city;
		Pincode = pincode;
	}

	public EmpRegistration() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "EmpRegistration [EmpId=" + EmpId + ", Name=" + Name + ", FatherName=" + FatherName + ", PFAccNo="
				+ PFAccNo + ", Email=" + Email + ", Designation=" + Designation + ", Experience=" + Experience
				+ ", MobileNumber=" + MobileNumber + ", DOB=" + DOB + ", DateOfJoining=" + DateOfJoining + ", Gender="
				+ Gender + ", MarriedStatus=" + MarriedStatus + ", Country=" + Country + ", State=" + State + ", City="
				+ City + ", Pincode=" + Pincode + "]";
	}

}
