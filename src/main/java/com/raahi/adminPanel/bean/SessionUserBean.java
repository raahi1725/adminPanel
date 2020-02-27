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
	
	private Integer tourPlannerId;
	
	private Integer tourPlannerBranchId;
	
	private String tourPlannerName;
	
	private String tourPlannerRegNo;
	
	private String IpAddress;
	
	private String macAddress;
	
	private String deviceType;
	
	private String  sessionLanguage;
	
	private String firstName;
	
	private String lastName;
	
	private Integer tourPlannerStaffId;
	
	private String roleName;
	
	private String userName;

	public User getUserBean() {
		return userBean;
	}

	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}

	public Integer getTourPlannerId() {
		return tourPlannerId;
	}

	public void setTourPlannerId(Integer tourPlannerId) {
		this.tourPlannerId = tourPlannerId;
	}

	public Integer getTourPlannerBranchId() {
		return tourPlannerBranchId;
	}

	public void setTourPlannerBranchId(Integer tourPlannerBranchId) {
		this.tourPlannerBranchId = tourPlannerBranchId;
	}

	public String getTourPlannerName() {
		return tourPlannerName;
	}

	public void setTourPlannerName(String tourPlannerName) {
		this.tourPlannerName = tourPlannerName;
	}

	public String getTourPlannerRegNo() {
		return tourPlannerRegNo;
	}

	public void setTourPlannerRegNo(String tourPlannerRegNo) {
		this.tourPlannerRegNo = tourPlannerRegNo;
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

	public Integer getTourPlannerStaffId() {
		return tourPlannerStaffId;
	}

	public void setTourPlannerStaffId(Integer tourPlannerStaffId) {
		this.tourPlannerStaffId = tourPlannerStaffId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
