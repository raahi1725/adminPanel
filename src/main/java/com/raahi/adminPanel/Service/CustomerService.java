package com.raahi.adminPanel.Service;

import java.util.List;

import com.raahi.adminPanel.bean.CustomerBean;
import com.raahi.adminPanel.model.CustomerModel;

public interface CustomerService {

	boolean addCustomers(CustomerModel customerModel);

	List<CustomerBean> searchCustomer(String searchParameter);

	CustomerBean getCustomerDetails(Integer customerId);

	Long getMaxRegNo();

}
