package com.raahi.adminPanel.model;

import java.security.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tour_planner_master")
public class TourPlannerMasterModel {

	private Integer tourPlannerMasterId;
	private String tourPlannerName;
	private String website;
	private String logoImageFileName;
	private String logoImageFilePath;
	private Date registeredDate; 
	private Date startDate;
	private Date endDate;
	private Timestamp cDate;
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
	@Column(name = "tourPlannerMasterId")
	public Integer getTourPlannerMasterId() {
		return tourPlannerMasterId;
	}
	public void setTourPlannerMasterId(Integer tourPlannerMasterId) {
		this.tourPlannerMasterId = tourPlannerMasterId;
	}
	
	@Column(name = "tourPlannerName")
	public String getTourPlannerName() {
		return tourPlannerName;
	}
	public void setTourPlannerName(String tourPlannerName) {
		this.tourPlannerName = tourPlannerName;
	}
	
	@Column(name = "website")
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	
	@Column(name = "logoImageFileName")
	public String getLogoImageFileName() {
		return logoImageFileName;
	}
	public void setLogoImageFileName(String logoImageFileName) {
		this.logoImageFileName = logoImageFileName;
	}
	
	@Column(name = "logoImageFilePath")
	public String getLogoImageFilePath() {
		return logoImageFilePath;
	}
	public void setLogoImageFilePath(String logoImageFilePath) {
		this.logoImageFilePath = logoImageFilePath;
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

	@Column(name = "cDate",nullable = true, updatable= false,columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	public Timestamp getcDate() {
		return cDate;
	}
	public void setcDate(Timestamp cDate) {
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
