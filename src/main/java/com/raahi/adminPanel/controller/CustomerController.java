package com.raahi.adminPanel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.raahi.adminPanel.Service.CustomerService;
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
    		RedirectAttributes redirectAttributes) {
    	ModelAndView model = new ModelAndView();
    	boolean isSaveSuccessful = customerService.addCustomers(customerModel);
    	if(isSaveSuccessful) {
    		redirectAttributes.addFlashAttribute("message", "Records added successfully.");
    	}else {
    		redirectAttributes.addFlashAttribute("message", "Error while adding record.");
    	}
    	model.setViewName("customers");
    	return model;
    }
}
