package com.raahi.adminPanel.bean;

import java.util.Date;

import com.raahi.adminPanel.model.TourPlannerBranchModel;
import com.raahi.adminPanel.model.TourPlannerMasterModel;

public class CustomerBean {
	
	private Integer customerId;
	private Integer tourPlannerMasterModel;
	private Integer tourPlannerBranchModel;
	private String firstName;
	private String middleName;
	private String lastName;
	private String regNo;
	private String regDate;
	private String gender;
	private String birthDate;
	private String bloodGroup;
	private String address;
	private String state;
	private String city;
	private String country;
	private Integer pinCode;
	private String casteCategory;
	private String Occupation;
	private String nationality;
	private String emailId;
	private String contactNo;
	private String altContactNo;
	private Integer referalCodeId;
	private String hearedFrom;
	private String other;
	private String photoIdNames;
	private String photoIdFilePath;
	private String customerPhotoName;
	private String customerPhotoPath;
	private Date cDate;
	private String searchedField;
	
	public CustomerBean() {
		super();
	}
	
	public CustomerBean(Integer customerId, String searchedField) {
		super();
		this.customerId = customerId;
		this.setSearchedField(searchedField);
	}

	public CustomerBean(Integer customerId, Integer tourPlannerMasterModel,
			Integer tourPlannerBranchModel, String firstName, String middleName, String lastName,
			String regNo, String regDate, String gender, String birthDate, String bloodGroup, String address,
			String state, String city, String country, Integer pinCode, String casteCategory, String occupation,
			String nationality, String emailId, String contactNo, String altContactNo, Integer referalCodeId,
			String hearedFrom, String other, String photoIdNames, String photoIdFilePath, String customerPhotoName,
			String customerPhotoPath, Date cDate) {
		super();
		this.customerId = customerId;
		this.tourPlannerMasterModel = tourPlannerMasterModel;
		this.tourPlannerBranchModel = tourPlannerBranchModel;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.regNo = regNo;
		this.regDate = regDate;
		this.gender = gender;
		this.birthDate = birthDate;
		this.bloodGroup = bloodGroup;
		this.address = address;
		this.state = state;
		this.city = city;
		this.country = country;
		this.pinCode = pinCode;
		this.casteCategory = casteCategory;
		Occupation = occupation;
		this.nationality = nationality;
		this.emailId = emailId;
		this.contactNo = contactNo;
		this.altContactNo = altContactNo;
		this.referalCodeId = referalCodeId;
		this.hearedFrom = hearedFrom;
		this.other = other;
		this.photoIdNames = photoIdNames;
		this.photoIdFilePath = photoIdFilePath;
		this.customerPhotoName = customerPhotoName;
		this.customerPhotoPath = customerPhotoPath;
		this.cDate = cDate;
	}



	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public Integer getTourPlannerMasterModel() {
		return tourPlannerMasterModel;
	}
	public void setTourPlannerMasterModel(Integer tourPlannerMasterModel) {
		this.tourPlannerMasterModel = tourPlannerMasterModel;
	}
	public Integer getTourPlannerBranchModel() {
		return tourPlannerBranchModel;
	}
	public void setTourPlannerBranchModel(Integer tourPlannerBranchModel) {
		this.tourPlannerBranchModel = tourPlannerBranchModel;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Integer getPinCode() {
		return pinCode;
	}
	public void setPinCode(Integer pinCode) {
		this.pinCode = pinCode;
	}
	public String getCasteCategory() {
		return casteCategory;
	}
	public void setCasteCategory(String casteCategory) {
		this.casteCategory = casteCategory;
	}
	public String getOccupation() {
		return Occupation;
	}
	public void setOccupation(String occupation) {
		Occupation = occupation;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getAltContactNo() {
		return altContactNo;
	}
	public void setAltContactNo(String altContactNo) {
		this.altContactNo = altContactNo;
	}
	public Integer getReferalCodeId() {
		return referalCodeId;
	}
	public void setReferalCodeId(Integer referalCodeId) {
		this.referalCodeId = referalCodeId;
	}
	public String getHearedFrom() {
		return hearedFrom;
	}
	public void setHearedFrom(String hearedFrom) {
		this.hearedFrom = hearedFrom;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getPhotoIdNames() {
		return photoIdNames;
	}
	public void setPhotoIdNames(String photoIdNames) {
		this.photoIdNames = photoIdNames;
	}
	public String getPhotoIdFilePath() {
		return photoIdFilePath;
	}
	public void setPhotoIdFilePath(String photoIdFilePath) {
		this.photoIdFilePath = photoIdFilePath;
	}
	public String getCustomerPhotoName() {
		return customerPhotoName;
	}
	public void setCustomerPhotoName(String customerPhotoName) {
		this.customerPhotoName = customerPhotoName;
	}
	public String getCustomerPhotoPath() {
		return customerPhotoPath;
	}
	public void setCustomerPhotoPath(String customerPhotoPath) {
		this.customerPhotoPath = customerPhotoPath;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	public String getSearchedField() {
		return searchedField;
	}

	public void setSearchedField(String searchedField) {
		this.searchedField = searchedField;
	}
	
}
