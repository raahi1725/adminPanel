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
@Table(name = "package_master") 
public class PackageMasterModel {
	
	private Integer packageId;
	private TourPlannerBranchModel tourPlannerBranchId;
	private String packageName;
	private Integer days;
	private Integer nights;
	private String tourFrom;
	private String tourTo;
	private Date tourFromDate; 
	private Date tourToDate; 
	private Integer tourAmount;
	private Integer gstPercentage;
	private String amountPer;
	private String thingsToCarry;
	private String otherDescription;
	private Date cDate;
	private TourPlannerStaffModel createdBy;
	private String isDel;
	private TourPlannerStaffModel deletedBy;
	private String isEdit;
	private TourPlannerStaffModel editedBy;
	private Date delDate;
	private Date editDate;
	private String ipAddress;
	private String isCompleted;
	
	@Id
	@Column(name = "packageId")
	public Integer getPackageId() {
		return packageId;
	}
	public void setPackageId(Integer packageId) {
		this.packageId = packageId;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tourPlannerBranchId")
	public TourPlannerBranchModel getTourPlannerBranchId() {
		return tourPlannerBranchId;
	}
	public void setTourPlannerBranchId(TourPlannerBranchModel tourPlannerBranchId) {
		this.tourPlannerBranchId = tourPlannerBranchId;
	}
	
	@Column(name = "packageName")
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	
	@Column(name = "days")
	public Integer getDays() {
		return days;
	}
	public void setDays(Integer days) {
		this.days = days;
	}
	
	@Column(name = "nights")
	public Integer getNights() {
		return nights;
	}
	public void setNights(Integer nights) {
		this.nights = nights;
	}
	
	@Column(name = "tourFrom")
	public String getTourFrom() {
		return tourFrom;
	}
	public void setTourFrom(String tourFrom) {
		this.tourFrom = tourFrom;
	}
	
	@Column(name = "tourTo")
	public String getTourTo() {
		return tourTo;
	}
	public void setTourTo(String tourTo) {
		this.tourTo = tourTo;
	}
	
	@Column(name = "tourFromDate")
	public Date getTourFromDate() {
		return tourFromDate;
	}
	public void setTourFromDate(Date tourFromDate) {
		this.tourFromDate = tourFromDate;
	}
	
	@Column(name = "tourToDate")
	public Date getTourToDate() {
		return tourToDate;
	}
	public void setTourToDate(Date tourToDate) {
		this.tourToDate = tourToDate;
	}
	
	@Column(name = "tourAmount")
	public Integer getTourAmount() {
		return tourAmount;
	}
	public void setTourAmount(Integer tourAmount) {
		this.tourAmount = tourAmount;
	}
	
	@Column(name = "gstPercentage")
	public Integer getGstPercentage() {
		return gstPercentage;
	}
	public void setGstPercentage(Integer gstPercentage) {
		this.gstPercentage = gstPercentage;
	}
	
	@Column(name = "amountPer")
	public String getAmountPer() {
		return amountPer;
	}
	public void setAmountPer(String amountPer) {
		this.amountPer = amountPer;
	}
	
	@Column(name = "thingsToCarry")
	public String getThingsToCarry() {
		return thingsToCarry;
	}
	public void setThingsToCarry(String thingsToCarry) {
		this.thingsToCarry = thingsToCarry;
	}
	
	@Column(name = "otherDescription")
	public String getOtherDescription() {
		return otherDescription;
	}
	public void setOtherDescription(String otherDescription) {
		this.otherDescription = otherDescription;
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
	
	@Column(name = "isEdit")
	public String getIsEdit() {
		return isEdit;
	}
	
	public void setIsEdit(String isEdit) {
		this.isEdit = isEdit;
	}
	
	@Column(name = "editDate")
	public Date getEditDate() {
		return editDate;
	}
	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}
	
	@Column(name = "isCompleted")
	public String getIsCompleted() {
		return isCompleted;
	}
	public void setIsCompleted(String isCompleted) {
		this.isCompleted = isCompleted;
	}
	
	@Column(name = "ipAddress")
	public String getIpAddress() {
		return ipAddress;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
}
