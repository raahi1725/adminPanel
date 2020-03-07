package com.raahi.adminPanel.Service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.raahi.adminPanel.Repository.CustomerRepository;
import com.raahi.adminPanel.Service.CustomerService;
import com.raahi.adminPanel.bean.CustomerBean;
import com.raahi.adminPanel.bean.SessionUserBean;
import com.raahi.adminPanel.exception.RecordNotFoundException;
import com.raahi.adminPanel.model.CustomerModel;
import com.raahi.adminPanel.model.TourPlannerBranchModel;
import com.raahi.adminPanel.model.TourPlannerMasterModel;
import com.raahi.adminPanel.model.TourPlannerStaffModel;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired 
	private CustomerRepository customerRepository;
	
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
			TourPlannerStaffModel tourPlannerStaffModel = new TourPlannerStaffModel();
			tourPlannerStaffModel.setTourPlannerStaffId(sessionUserBean.getTourPlannerStaffId());
			customerModel.setCreatedBy(tourPlannerStaffModel);
			customerRepository.saveAndFlush(customerModel);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<CustomerBean> searchCustomer(String searchParameter) {
		List<CustomerBean> customerList = new ArrayList<>();
		try {
			customerList = customerRepository.searchCustomer(searchParameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return customerList;
	}

	@Override
	public CustomerBean getCustomerDetails(Integer customerId) {
		CustomerBean bean = new CustomerBean();
		try {
			bean = customerRepository.getCustomerDetails(customerId);
			if(bean==null) {
				throw new RecordNotFoundException("Customer Details Not Found");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	@Override
	public Long getMaxRegNo() {
		return customerRepository.getMaxRegNo(sessionUserBean.getTourPlannerBranchId());
	}

}
