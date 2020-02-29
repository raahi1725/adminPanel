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
@Table(name = "customer") 
public class CustomerModel implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer customerId;
	private TourPlannerMasterModel tourPlannerMasterModel;
	private TourPlannerBranchModel tourPlannerBranchModel;
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
	private TourPlannerStaffModel createdBy;
	private String isDel="0";
	private TourPlannerStaffModel deletedBy;
	private Date delDate;
	private String isEdit="0";
	private TourPlannerStaffModel editedBy;
	private Date editDate;
	private String ipAdress;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "customerId")
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerId")
	public TourPlannerMasterModel getTourPlannerMasterModel() {
		return tourPlannerMasterModel;
	}
	public void setTourPlannerMasterModel(TourPlannerMasterModel tourPlannerMasterModel) {
		this.tourPlannerMasterModel = tourPlannerMasterModel;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerBranchId")
	public TourPlannerBranchModel getTourPlannerBranchModel() {
		return tourPlannerBranchModel;
	}
	public void setTourPlannerBranchModel(TourPlannerBranchModel tourPlannerBranchModel) {
		this.tourPlannerBranchModel = tourPlannerBranchModel;
	}
	
	@Column(name = "firstName")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name = "middleName")
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
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
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
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
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
	
	@Column(name = "city")
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
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
	
	@Column(name = "contactNo")
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	@Column(name = "altContactNo")
	public String getAltContactNo() {
		return altContactNo;
	}
	public void setAltContactNo(String altContactNo) {
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
	public void setCreatedBy(TourPlannerStaffModel editedBy) {
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
	
	@Column(name = "ipAdress")
	public String getIpAdress() {
		return ipAdress;
	}
	public void setIpAdress(String ipAdress) {
		this.ipAdress = ipAdress;
	}
	
}
