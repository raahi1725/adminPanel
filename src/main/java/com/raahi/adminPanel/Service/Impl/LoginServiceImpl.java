package com.raahi.adminPanel.Service.Impl;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.raahi.adminPanel.Constants.RoleEnum;
import com.raahi.adminPanel.Repository.TourPlannerBranchRepository;
import com.raahi.adminPanel.Repository.TourPlannerMasterRepository;
import com.raahi.adminPanel.Repository.TourPlannerStaffRepository;
import com.raahi.adminPanel.Service.LoginService;
import com.raahi.adminPanel.bean.RegisterRequestBean;
import com.raahi.adminPanel.model.TourPlannerBranchModel;
import com.raahi.adminPanel.model.TourPlannerMasterModel;
import com.raahi.adminPanel.model.TourPlannerStaffModel;

@Component
public class LoginServiceImpl implements LoginService {

	@Autowired 
	TourPlannerStaffRepository tourPlannerStaffRepository;
	
	@Autowired 
	TourPlannerMasterRepository tourPlannerMasterRepository;
	
	@Autowired 
	TourPlannerBranchRepository tourPlannerBranchRepository;
	
	
	@Override
	public boolean addTourPlanner(RegisterRequestBean registerRequestBean) {
		try {
			Calendar c= Calendar.getInstance();
			c.add(Calendar.DATE, 30);
			Date endDate=c.getTime();
			
			ArrayList<TourPlannerStaffModel> staffList = new ArrayList<>();
			TourPlannerStaffModel tourPlannerStaffModel = new TourPlannerStaffModel();
			tourPlannerStaffModel.setFirstName(registerRequestBean.getAdminFirstName());
			tourPlannerStaffModel.setLastName(registerRequestBean.getAdminLastName());
			tourPlannerStaffModel.setContactNo(Integer.parseInt(registerRequestBean.getAdminContactNo()));
			tourPlannerStaffModel.setPassword(registerRequestBean.getAdminPassword());
			tourPlannerStaffModel.setEmail(registerRequestBean.getAdminEmail());
			tourPlannerStaffModel.setRole(RoleEnum.SUPERADMIN.getRoles());
			tourPlannerStaffModel.setEditPermission("1");
			tourPlannerStaffModel.setDeletePermission("1");
			staffList.add(tourPlannerStaffModel);
			
			TourPlannerStaffModel raahiPlannerStaffModel = new TourPlannerStaffModel();
			raahiPlannerStaffModel.setFirstName("RAAHI");
			raahiPlannerStaffModel.setLastName("ADMIN");
			raahiPlannerStaffModel.setContactNo(Integer.parseInt(registerRequestBean.getAdminContactNo()));
			raahiPlannerStaffModel.setPassword("admin");
			raahiPlannerStaffModel.setEmail("info@myRaahi.com");
			raahiPlannerStaffModel.setRole(RoleEnum.RAAHIADMIN.getRoles());
			raahiPlannerStaffModel.setEditPermission("1");
			raahiPlannerStaffModel.setDeletePermission("1");
			staffList.add(raahiPlannerStaffModel);
			
			tourPlannerStaffRepository.saveAll(staffList);
			
			TourPlannerMasterModel tourPlannerMasterModel = new TourPlannerMasterModel();
			tourPlannerMasterModel.setRegisteredDate(new Date());
			tourPlannerMasterModel.setStartDate(new Date());
			tourPlannerMasterModel.setTourPlannerName(registerRequestBean.getOrgName());
			tourPlannerMasterModel.setWebsite(registerRequestBean.getWebsite());
			tourPlannerMasterModel.setEndDate(endDate);
			tourPlannerMasterRepository.save(tourPlannerMasterModel);
			
			TourPlannerBranchModel tourPlannerBranchModel = new TourPlannerBranchModel();
			tourPlannerBranchModel.setBranchName(registerRequestBean.getHeadBranchName());
			tourPlannerBranchModel.setHeadBranch("1");
			tourPlannerBranchModel.setCity(registerRequestBean.getBranchCity());
			tourPlannerBranchModel.setState(registerRequestBean.getBranchState());
			tourPlannerBranchModel.setContactNo(registerRequestBean.getBranchContactNo());
			tourPlannerBranchModel.setEmail(registerRequestBean.getBranchEmail());
			tourPlannerBranchModel.setPostalCode(registerRequestBean.getBranchPostalCode());
			tourPlannerBranchModel.setAddress(registerRequestBean.getBranchAddress());
			tourPlannerBranchModel.setIsActive("1");
			tourPlannerBranchModel.setActivatedBy(tourPlannerStaffModel);
			tourPlannerBranchModel.setActiveDate(new Date());
			tourPlannerBranchModel.setRegisteredDate(new Date());
			tourPlannerBranchModel.setStartDate(new Date());
			tourPlannerBranchModel.setEndDate(endDate);
			
			tourPlannerBranchRepository.save(tourPlannerBranchModel);
			
			return true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return false;
	}

}
