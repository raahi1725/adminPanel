package com.raahi.adminPanel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.raahi.adminPanel.Service.CustomerService;
import com.raahi.adminPanel.bean.CustomerBean;
import com.raahi.adminPanel.model.CustomerModel;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService customerService;

	@GetMapping(value = "/customers")
	@ResponseBody
    public ModelAndView dashboard(Model model) {
		model.addAttribute("customerModel",new CustomerModel());
    	return new ModelAndView("customers");
    }
	
	@PostMapping(value = "/customer")
    public ModelAndView addCustomers(@ModelAttribute CustomerModel customerModel,
    		Model model) {
    	ModelAndView modelAndView = new ModelAndView();
    	boolean isSaveSuccessful = customerService.addCustomers(customerModel);
    	if(isSaveSuccessful) {
    		model.addAttribute("message", "Records added successfully.");
    	}else {
    		model.addAttribute("error", "Error while adding record.");
    	}
    	modelAndView.setViewName("customers");
    	return modelAndView;
    }
	
	@GetMapping(value = "/searchCustomer")
	@ResponseBody
    public ResponseEntity<?>  searchCustomer(@RequestParam("searchParameter") String searchParameter) {
		List<CustomerBean> customerList = customerService.searchCustomer(searchParameter);
    	return ResponseEntity.status(HttpStatus.OK).body(customerList);
    }
	
	@GetMapping(value = "/customerDetails")
	@ResponseBody
    public ResponseEntity<?> getCustomerDetails(@RequestParam("customerId") Integer customerId) {
		CustomerBean customerBean = customerService.getCustomerDetails(customerId);
    	return ResponseEntity.status(HttpStatus.OK).body(customerBean);
    }
	
	@GetMapping(value = "/maxRegNo")
	@ResponseBody
    public ResponseEntity<?> getMaxRegNo() {
    	return ResponseEntity.status(HttpStatus.OK).body(customerService.getMaxRegNo());
    }
}
