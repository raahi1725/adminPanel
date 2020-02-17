package com.raahi.adminPanel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.raahi.adminPanel.Service.LoginService;
import com.raahi.adminPanel.model.TourPlannerMasterModel;

@Controller
public class LoginController {

/*	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView dashboard() {
    	ModelAndView model = new ModelAndView();
    	model.setViewName("index.jsp");
    	return model;
    }*/
	
	@Autowired
	LoginService loginService;
	
	@GetMapping(value = "/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("errorMsg", "Your username and password are invalid.");

        if (logout != null)
            model.addAttribute("msg", "You have been logged out successfully.");

        return "login.jsp";
    }
	
	@GetMapping(value = "/register")
    public String register() {
    	return "register.jsp";
    }
	
	@PostMapping(value = "/tourPlanner")
	@ResponseBody
    public boolean addTourPlanner(@RequestBody TourPlannerMasterModel tourPlannerMasterModel) {
    	return loginService.addTourPlanner(tourPlannerMasterModel);
    }
}
