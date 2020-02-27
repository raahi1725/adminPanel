package com.raahi.adminPanel.Service.Impl;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.raahi.adminPanel.Constants.RoleEnum;
import com.raahi.adminPanel.Repository.TourPlannerBranchRepository;
import com.raahi.adminPanel.Repository.TourPlannerMasterRepository;
import com.raahi.adminPanel.Repository.TourPlannerStaffRepository;
import com.raahi.adminPanel.Service.LoginService;
import com.raahi.adminPanel.bean.RegisterRequestBean;
import com.raahi.adminPanel.bean.SessionUserBean;
import com.raahi.adminPanel.model.TourPlannerBranchModel;
import com.raahi.adminPanel.model.TourPlannerMasterModel;
import com.raahi.adminPanel.model.TourPlannerStaffModel;
import com.raahi.adminPanel.model.User;

@Component
public class LoginServiceImpl implements LoginService {

	@Autowired 
	TourPlannerStaffRepository tourPlannerStaffRepository;
	
	@Autowired 
	TourPlannerMasterRepository tourPlannerMasterRepository;
	
	@Autowired 
	TourPlannerBranchRepository tourPlannerBranchRepository;
	
	@Autowired
	SessionUserBean sessionUserBean;
	
	
	@Override
	public boolean addTourPlanner(RegisterRequestBean registerRequestBean,User user) {
		try {
			Calendar c= Calendar.getInstance();
			c.add(Calendar.DATE, 30);
			Date endDate=c.getTime();
			TourPlannerMasterModel tourPlannerMasterModel = new TourPlannerMasterModel();
			tourPlannerMasterModel.setRegisteredDate(new Date());
			tourPlannerMasterModel.setStartDate(new Date());
			tourPlannerMasterModel.setTourPlannerName(registerRequestBean.getOrgName());
			tourPlannerMasterModel.setWebsite(registerRequestBean.getWebsite());
			tourPlannerMasterModel.setEndDate(endDate);
			tourPlannerMasterRepository.save(tourPlannerMasterModel);
			
			TourPlannerBranchModel tourPlannerBranchModel = new TourPlannerBranchModel();
			if(StringUtils.isEmpty((registerRequestBean.getHeadBranchName()))) {
				tourPlannerBranchModel.setBranchName(registerRequestBean.getOrgName());
			}else {
				tourPlannerBranchModel.setBranchName(registerRequestBean.getHeadBranchName());
			}
			
			tourPlannerBranchModel.setHeadBranch("1");
			tourPlannerBranchModel.setCity(registerRequestBean.getBranchCity());
			tourPlannerBranchModel.setState(registerRequestBean.getBranchState());
			tourPlannerBranchModel.setContactNo(registerRequestBean.getBranchContactNo());
			tourPlannerBranchModel.setEmail(registerRequestBean.getBranchEmail());
			tourPlannerBranchModel.setPostalCode(registerRequestBean.getBranchPostalCode());
			tourPlannerBranchModel.setAddress(registerRequestBean.getBranchAddress());
			tourPlannerBranchModel.setIsActive("1");
			tourPlannerBranchModel.setActivatedBy("register");
			tourPlannerBranchModel.setTourPlannerMasterModel(tourPlannerMasterModel);
			tourPlannerBranchModel.setActiveDate(new Date());
			tourPlannerBranchModel.setRegisteredDate(new Date());
			tourPlannerBranchModel.setStartDate(new Date());
			tourPlannerBranchModel.setEndDate(endDate);
			
			tourPlannerBranchRepository.save(tourPlannerBranchModel);
			

			ArrayList<TourPlannerStaffModel> staffList = new ArrayList<>();
			TourPlannerStaffModel tourPlannerStaffModel = new TourPlannerStaffModel();
			tourPlannerStaffModel.setFirstName(registerRequestBean.getAdminFirstName());
			tourPlannerStaffModel.setLastName(registerRequestBean.getAdminLastName());
			tourPlannerStaffModel.setContactNo(registerRequestBean.getUsername());
			tourPlannerStaffModel.setEmail(registerRequestBean.getAdminEmail());
			tourPlannerStaffModel.setRole(RoleEnum.HEADOFFICER.getRoles());
			tourPlannerStaffModel.setEditPermission("1");
			tourPlannerStaffModel.setRegDate(new Date());
			tourPlannerStaffModel.setDeletePermission("1");
			tourPlannerStaffModel.setRegNo("1");
			tourPlannerStaffModel.setTourPlannerBranchModel(tourPlannerBranchModel);
			tourPlannerStaffModel.setUser(user);
			staffList.add(tourPlannerStaffModel);
			
			tourPlannerStaffRepository.saveAll(staffList);
			
			return true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return false;
	}


	@Override
	public void setSessionAttributes() {
		User user = new User();
		user.setUsername(sessionUserBean.getUserName());
		tourPlannerStaffRepository.getLoginDetails(user.getUsername());
		
	}

}
