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
@Table(name = "tour_planner_branch")
public class TourPlannerBranchModel {
	
	private Integer tourPlannerBranchId;
	private TourPlannerMasterModel tourPlannerMasterModel;
	private String branchName;
	private String address;
	private String city;
	private String state;
	private String country;
	private Integer postalCode;
	private String contactNo;
	private String email;
	private Date registeredDate;
	private String headBranch;
	private Date startDate;
	private Date endDate;
	private Date cDate;
	private String isDel="0";
	private TourPlannerStaffModel deletedBy;
	private Date delDate;
	private String isEdit="0";
	private TourPlannerStaffModel editedBy;
	private Date editDate;
	private String isActive="0";
	private String activatedBy;
	private Date activeDate;
	private String ipAdress;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "tourPlannerBranchId")
	public Integer getTourPlannerBranchId() {
		return tourPlannerBranchId;
	}
	public void setTourPlannerBranchId(Integer tourPlannerBranchId) {
		this.tourPlannerBranchId = tourPlannerBranchId;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerMasterId")
	public TourPlannerMasterModel getTourPlannerMasterModel() {
		return tourPlannerMasterModel;
	}
	public void setTourPlannerMasterModel(TourPlannerMasterModel tourPlannerMasterModel) {
		this.tourPlannerMasterModel = tourPlannerMasterModel;
	}
	
	@Column(name = "branchName")
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
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
	
	@Column(name = "address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Column(name = "postalCode")
	public Integer getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(Integer postalCode) {
		this.postalCode = postalCode;
	}
	
	@Column(name = "contactNo")
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	@Column(name = "email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "registeredDate")
	public Date getRegisteredDate() {
		return registeredDate;
	}
	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}
	
	@Column(name = "startDate")
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	@Column(name = "endDate")
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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
	
	@Column(name = "isActive")
	public String getIsActive() {
		return isActive;
	}
	
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	
	@Column(name = "activatedBy")
	public String getActivatedBy() {
		return activatedBy;
	}
	public void setActivatedBy(String activatedBy) {
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
	
	@Column(name = "headBranch")
	public String getHeadBranch() {
		return headBranch;
	}
	public void setHeadBranch(String headBranch) {
		this.headBranch = headBranch;
	}
	
}
	

