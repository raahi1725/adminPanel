package com.raahi.adminPanel.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.raahi.adminPanel.Repository.CustomerRepository;
import com.raahi.adminPanel.Service.CustomerService;
import com.raahi.adminPanel.model.CustomerModel;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired 
	private CustomerRepository customerRepository;
	
	@Override
	public boolean addCustomers(CustomerModel customerModel) {
		try {
			//customerModel.setTourPlannerId(1);
			//customerModel.setTourPlannerBranchId(1);
			customerRepository.save(customerModel);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
