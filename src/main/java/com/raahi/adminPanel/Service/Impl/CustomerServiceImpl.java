package com.raahi.adminPanel.Service.Impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.raahi.adminPanel.Service.CustomerService;
import com.raahi.adminPanel.bean.SessionUserBean;
import com.raahi.adminPanel.model.CustomerModel;
import com.raahi.adminPanel.model.TourPlannerBranchModel;
import com.raahi.adminPanel.model.TourPlannerMasterModel;
import com.raahi.adminPanel.model.TourPlannerStaffModel;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired 
	private CustomerService customerService;
	
	@Autowired
	private SessionUserBean sessionUserBean;
	
	@Override
	public boolean addCustomers(CustomerModel customerModel) {
		try {
			TourPlannerMasterModel tourPlannerMasterModel = new TourPlannerMasterModel();
			tourPlannerMasterModel.setTourPlannerMasterId(sessionUserBean.getTourPlannerId());
			customerModel.setTourPlannerMasterModel(tourPlannerMasterModel );
			TourPlannerBranchModel tourPlannerBranchModel = new TourPlannerBranchModel();
			tourPlannerBranchModel.setTourPlannerBranchId(sessionUserBean.getTourPlannerBranchId());
			customerModel.setTourPlannerBranchModel(tourPlannerBranchModel);
			customerModel.setRegDate(new Date());
			TourPlannerStaffModel tourPlannerStaffModel = new TourPlannerStaffModel();
			tourPlannerStaffModel.setTourPlannerStaffId(sessionUserBean.getTourPlannerStaffId());
			customerModel.setCreatedBy(tourPlannerStaffModel);
			customerService.addCustomers(customerModel);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
