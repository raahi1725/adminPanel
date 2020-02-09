package com.raahi.adminPanel.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tour_planner_staff")
public class TourPlannerStaffModel {

	private Integer tourPlannerStaffId;
	private TourPlannerBranchModel tourPlannerBranchId;
	private String firstName;
	private String lastName;
	private String regNo;
	private Date regDate;
	private String gender;
	private String photoIdNames;
	private String photoIdFilePath;
	private String photoName;
	private String photoFilePath;
	private String address;
	private String state;
	private String country;
	private Integer pinCode;
	private Date birthDate;
	private String countryCode;
	private Integer contactNo;
	private String altCountryCode;
	private Integer altContactNo;
	private String password;
	private String forgotQuestion;
	private String forgotAnswer;
	private Date cDate;
	private TourPlannerStaffModel createdBy;
	private String isDel;
	private TourPlannerStaffModel deletedBy;
	private Date delDate;
	private String isEdit;
	private TourPlannerStaffModel editedBy;
	private Date editDate;
	private String isActive;
	private TourPlannerStaffModel activatedBy;
	private Date activeDate;
	private String ipAdress;
	
	@Id
	@Column(name="tourPlannerStaffId")
	public Integer getTourPlannerStaffId() {
		return tourPlannerStaffId;
	}
	public void setTourPlannerStaffId(Integer tourPlannerStaffId) {
		this.tourPlannerStaffId = tourPlannerStaffId;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerBranchId")
	public TourPlannerBranchModel getTourPlannerBranchId() {
		return tourPlannerBranchId;
	}
	public void setTourPlannerBranchId(TourPlannerBranchModel tourPlannerBranchId) {
		this.tourPlannerBranchId = tourPlannerBranchId;
	}
	
	@Column(name="firstName")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name="lastName")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	@Column(name="regNo")
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	
	@Column(name="regDate")
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Column(name="gender")
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Column(name="photoIdNames")
	public String getPhotoIdNames() {
		return photoIdNames;
	}
	public void setPhotoIdNames(String photoIdNames) {
		this.photoIdNames = photoIdNames;
	}
	
	@Column(name="photoIdFilePath")
	public String getPhotoIdFilePath() {
		return photoIdFilePath;
	}
	public void setPhotoIdFilePath(String photoIdFilePath) {
		this.photoIdFilePath = photoIdFilePath;
	}
	
	@Column(name="photoName")
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	
	@Column(name="photoFilePath")
	public String getPhotoFilePath() {
		return photoFilePath;
	}
	public void setPhotoFilePath(String photoFilePath) {
		this.photoFilePath = photoFilePath;
	}
	
	@Column(name="address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Column(name="state")
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Column(name="country")
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Column(name="pinCode")
	public Integer getPinCode() {
		return pinCode;
	}
	public void setPinCode(Integer pinCode) {
		this.pinCode = pinCode;
	}
	
	@Column(name="birthDate")
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	
	@Column(name="countryCode")
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	
	@Column(name="contactNo")
	public Integer getContactNo() {
		return contactNo;
	}
	public void setContactNo(Integer contactNo) {
		this.contactNo = contactNo;
	}
	
	@Column(name="altCountryCode")
	public String getAltCountryCode() {
		return altCountryCode;
	}
	public void setAltCountryCode(String altCountryCode) {
		this.altCountryCode = altCountryCode;
	}
	
	@Column(name="altContactNo")
	public Integer getAltContactNo() {
		return altContactNo;
	}
	public void setAltContactNo(Integer altContactNo) {
		this.altContactNo = altContactNo;
	}
	
	@Column(name="password")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name="forgotQuestion")
	public String getForgotQuestion() {
		return forgotQuestion;
	}
	public void setForgotQuestion(String forgotQuestion) {
		this.forgotQuestion = forgotQuestion;
	}
	
	@Column(name="forgotAnswer")
	public String getForgotAnswer() {
		return forgotAnswer;
	}
	public void setForgotAnswer(String forgotAnswer) {
		this.forgotAnswer = forgotAnswer;
	}
	
	@Column(name = "cDate")
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "createdBy")
	public TourPlannerStaffModel getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(TourPlannerStaffModel createdBy) {
		this.createdBy = createdBy;
	}
	
	@Column(name = "isDel")
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "deletedBy")
	public TourPlannerStaffModel getDeletedBy() {
		return deletedBy;
	}
	public void setDeletedBy(TourPlannerStaffModel deletedBy) {
		this.deletedBy = deletedBy;
	}
	@Column(name = "isEdit")
	public String getIsEdit() {
		return isEdit;
	}
	
	public void setIsEdit(String isEdit) {
		this.isEdit = isEdit;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "editedBy")
	public TourPlannerStaffModel getEditedBy() {
		return editedBy;
	}
	public void setEditedBy(TourPlannerStaffModel editedBy) {
		this.editedBy = editedBy;
	}
	
	@Column(name = "delDate")
	public Date getDelDate() {
		return delDate;
	}
	public void setDelDate(Date delDate) {
		this.delDate = delDate;
	}
	
	@Column(name = "editDate")
	public Date getEditDate() {
		return editDate;
	}
	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}
	
	@Column(name = "isActive")
	public String getIsActive() {
		return isActive;
	}
	
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "activatedBy")
	public TourPlannerStaffModel getActivatedBy() {
		return activatedBy;
	}
	public void setActivatedBy(TourPlannerStaffModel activatedBy) {
		this.activatedBy = activatedBy;
	}
	
	@Column(name = "activeDate")
	public Date getActiveDate() {
		return activeDate;
	}
	public void setActiveDate(Date activeDate) {
		this.activeDate = activeDate;
	}
	
	@Column(name = "ipAdress")
	public String getIpAdress() {
		return ipAdress;
	}
	public void setIpAdress(String ipAdress) {
		this.ipAdress = ipAdress;
	}
}
