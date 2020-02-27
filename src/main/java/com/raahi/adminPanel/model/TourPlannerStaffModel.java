package com.raahi.adminPanel.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tour_planner_staff")
public class TourPlannerStaffModel {

	private Integer tourPlannerStaffId;
	private TourPlannerBranchModel tourPlannerBranchModel;
	private String firstName;
	private String lastName;
	private String role;
	private String regNo;
	private Date regDate;
	private String gender;
	private String email;
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
	private String contactNo;
	private String altCountryCode;
	private Integer altContactNo;
	private String editPermission="0";
	private String deletePermission="0";
	private Date cDate;
	private String isDel="0";
	private TourPlannerStaffModel deletedBy;
	private Date delDate;
	private String isEdit="0";
	private TourPlannerStaffModel editedBy;
	private Date editDate;
	private String ipAdress;
	private User user;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="tourPlannerStaffId")
	public Integer getTourPlannerStaffId() {
		return tourPlannerStaffId;
	}
	public void setTourPlannerStaffId(Integer tourPlannerStaffId) {
		this.tourPlannerStaffId = tourPlannerStaffId;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerBranchId")
	public TourPlannerBranchModel getTourPlannerBranchModel() {
		return tourPlannerBranchModel;
	}
	public void setTourPlannerBranchModel(TourPlannerBranchModel tourPlannerBranchModel) {
		this.tourPlannerBranchModel = tourPlannerBranchModel;
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
	
	@Column(name="role")
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
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
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
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
	
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "cDate")
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
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
	
	@Column(name = "ipAdress")
	public String getIpAdress() {
		return ipAdress;
	}
	public void setIpAdress(String ipAdress) {
		this.ipAdress = ipAdress;
	}
	
	@Column(name = "editPermission")
	public String getEditPermission() {
		return editPermission;
	}
	public void setEditPermission(String editPermission) {
		this.editPermission = editPermission;
	}
	
	@Column(name = "deletePermission")
	public String getDeletePermission() {
		return deletePermission;
	}
	public void setDeletePermission(String deletePermission) {
		this.deletePermission = deletePermission;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userId")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
