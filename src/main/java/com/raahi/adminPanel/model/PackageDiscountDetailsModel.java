//package com.raahi.adminPanel.model;
//
//import java.util.Date;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "package_discount_details") 
//public class PackageDiscountDetailsModel {
//	
//	private Integer packageDiscountId;
//	private PackageMasterModel packageId;
//	private Integer amount;
//	private String discountFlag;
//	private String criteria;
//	private String description;
//	private Date cDate;
//	private String ipAddress;
//	
//	@Id
//	@Column(name = "packageDiscountId")
//	public Integer getPackageDiscountId() {
//		return packageDiscountId;
//	}
//	public void setPackageDiscountId(Integer packageDiscountId) {
//		this.packageDiscountId = packageDiscountId;
//	}
//	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "packageId")
//	public PackageMasterModel getPackageId() {
//		return packageId;
//	}
//	public void setPackageId(PackageMasterModel packageId) {
//		this.packageId = packageId;
//	}
//	
//	@Column(name = "amount")
//	public Integer getAmount() {
//		return amount;
//	}
//	public void setAmount(Integer amount) {
//		this.amount = amount;
//	}
//	
//	@Column(name = "discountFlag")
//	public String getDiscountFlag() {
//		return discountFlag;
//	}
//	public void setDiscountFlag(String discountFlag) {
//		this.discountFlag = discountFlag;
//	}
//	
//	@Column(name = "criteria")
//	public String getCriteria() {
//		return criteria;
//	}
//	public void setCriteria(String criteria) {
//		this.criteria = criteria;
//	}
//	
//	@Column(name = "description")
//	public String getDescription() {
//		return description;
//	}
//	public void setDescription(String description) {
//		this.description = description;
//	}
//	
//	@Column(name = "cDate")
//	public Date getcDate() {
//		return cDate;
//	}
//	public void setcDate(Date cDate) {
//		this.cDate = cDate;
//	}
//	
//	@Column(name = "ipAddress")
//	public String getIpAddress() {
//		return ipAddress;
//	}
//	public void setIpAddress(String ipAddress) {
//		this.ipAddress = ipAddress;
//	}
//}
