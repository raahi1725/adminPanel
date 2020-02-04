package com.raahi.adminPanel.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

@Entity
@DynamicUpdate
@Table(name = "customer") 
public class CustomerModel implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer customerId;
	private Integer tourPlannerId;
	private Integer tourPlannerBranchId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String regNo;
	private Date regDate;
	private String gender;
	private Date birthDate;
	private String bloodGroup;
	private String address;
	private String state;
	private String country;
	private Integer pinCode;
	private String casteCategory;
	private String Occupation;
	private String nationality;
	private String emailId;
	private String countryCode;
	private Integer contactNo;
	private String altCountryCode;
	private Integer altContactNo;
	private Integer referalCodeId;
	private String hearedFrom;
	private String other;
	private String photoIdNames;
	private String photoIdFilePath;
	private String customerPhotoName;
	private String customerPhotoPath;
	
	@Column(name = "customerId")
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerId")
	public Integer getTourPlannerId() {
		return tourPlannerId;
	}
	public void setTourPlannerId(Integer tourPlannerId) {
		this.tourPlannerId = tourPlannerId;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerBranchId")
	public Integer getTourPlannerBranchId() {
		return tourPlannerBranchId;
	}
	public void setTourPlannerBranchId(Integer tourPlannerBranchId) {
		this.tourPlannerBranchId = tourPlannerBranchId;
	}
	
	@Column(name = "firstName")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name = "customerId")
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	@Column(name = "lastName")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	@Column(name = "regNo")
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	
	@Column(name = "regDate")
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Column(name = "gender")
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Column(name = "birthDate")
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	
	@Column(name = "bloodGroup")
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	
	@Column(name = "address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Column(name = "state")
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Column(name = "country")
	public String getCountry() {
		return country;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Column(name = "pinCode")
	public Integer getPinCode() {
		return pinCode;
	}
	
	public void setPinCode(Integer pinCode) {
		this.pinCode = pinCode;
	}
	
	@Column(name = "casteCategory")
	public String getCasteCategory() {
		return casteCategory;
	}
	
	public void setCasteCategory(String casteCategory) {
		this.casteCategory = casteCategory;
	}
	
	@Column(name = "occupation")
	public String getOccupation() {
		return Occupation;
	}
	
	public void setOccupation(String occupation) {
		Occupation = occupation;
	}
	
	@Column(name = "nationality")
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	@Column(name = "emailId")
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	@Column(name = "countryCode")
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	
	@Column(name = "contactNo")
	public Integer getContactNo() {
		return contactNo;
	}
	public void setContactNo(Integer contactNo) {
		this.contactNo = contactNo;
	}
	
	@Column(name = "altCountryCode")
	public String getAltCountryCode() {
		return altCountryCode;
	}
	public void setAltCountryCode(String altCountryCode) {
		this.altCountryCode = altCountryCode;
	}
	
	@Column(name = "altContactNo")
	public Integer getAltContactNo() {
		return altContactNo;
	}
	public void setAltContactNo(Integer altContactNo) {
		this.altContactNo = altContactNo;
	}
	
	@Column(name = "referalCodeId")
	public Integer getReferalCodeId() {
		return referalCodeId;
	}
	public void setReferalCodeId(Integer referalCodeId) {
		this.referalCodeId = referalCodeId;
	}
	
	@Column(name = "hearedFrom")
	public String getHearedFrom() {
		return hearedFrom;
	}
	public void setHearedFrom(String hearedFrom) {
		this.hearedFrom = hearedFrom;
	}
	
	@Column(name = "other")
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	
	@Column(name = "photoIdNames")
	public String getPhotoIdNames() {
		return photoIdNames;
	}
	public void setPhotoIdNames(String photoIdNames) {
		this.photoIdNames = photoIdNames;
	}
	
	@Column(name = "photoIdFilePath")
	public String getPhotoIdFilePath() {
		return photoIdFilePath;
	}
	public void setPhotoIdFilePath(String photoIdFilePath) {
		this.photoIdFilePath = photoIdFilePath;
	}
	
	@Column(name = "customerPhotoName")
	public String getCustomerPhotoName() {
		return customerPhotoName;
	}
	public void setCustomerPhotoName(String customerPhotoName) {
		this.customerPhotoName = customerPhotoName;
	}
	
	@Column(name = "customerPhotoPath")
	public String getCustomerPhotoPath() {
		return customerPhotoPath;
	}
	public void setCustomerPhotoPath(String customerPhotoPath) {
		this.customerPhotoPath = customerPhotoPath;
	}
}
