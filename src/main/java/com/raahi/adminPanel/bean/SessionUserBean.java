package com.raahi.adminPanel.bean;

import java.io.Serializable;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import com.raahi.adminPanel.model.User;

@Component
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SessionUserBean implements Serializable {

	private static final long serialVersionUID = 7069850922488754287L;

	private User userBean = null;
	
	private Integer tourPlannerStaffId;
	
	private String firstName;
	
	private String lastName;
	
	private String roleName;
	
	private String regNo;
	
	private String userName;
	
	private Integer tourPlannerBranchId;
	
	private String branchName;
	
	private String headBranch;
	
	private Integer tourPlannerId;
	
	private String tourPlannerName;
	
	private String IpAddress;
	
	private String macAddress;
	
	private String deviceType;
	
	private String  sessionLanguage;

	public User getUserBean() {
		return userBean;
	}

	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}

	public Integer getTourPlannerStaffId() {
		return tourPlannerStaffId;
	}

	public void setTourPlannerStaffId(Integer tourPlannerStaffId) {
		this.tourPlannerStaffId = tourPlannerStaffId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRegNo() {
		return regNo;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getTourPlannerBranchId() {
		return tourPlannerBranchId;
	}

	public void setTourPlannerBranchId(Integer tourPlannerBranchId) {
		this.tourPlannerBranchId = tourPlannerBranchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getHeadBranch() {
		return headBranch;
	}

	public void setHeadBranch(String headBranch) {
		this.headBranch = headBranch;
	}

	public Integer getTourPlannerId() {
		return tourPlannerId;
	}

	public void setTourPlannerId(Integer tourPlannerId) {
		this.tourPlannerId = tourPlannerId;
	}

	public String getTourPlannerName() {
		return tourPlannerName;
	}

	public void setTourPlannerName(String tourPlannerName) {
		this.tourPlannerName = tourPlannerName;
	}

	public String getIpAddress() {
		return IpAddress;
	}

	public void setIpAddress(String ipAddress) {
		IpAddress = ipAddress;
	}

	public String getMacAddress() {
		return macAddress;
	}

	public void setMacAddress(String macAddress) {
		this.macAddress = macAddress;
	}

	public String getDeviceType() {
		return deviceType;
	}

	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}

	public String getSessionLanguage() {
		return sessionLanguage;
	}

	public void setSessionLanguage(String sessionLanguage) {
		this.sessionLanguage = sessionLanguage;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
