package com.raahi.adminPanel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

/*	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView dashboard() {
    	ModelAndView model = new ModelAndView();
    	model.setViewName("index.jsp");
    	return model;
    }*/
	
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
    public boolean addTourPlanner(@RequestBody("TourPlannerMasterModel") TourPlannerMasterModel) {
    	return "register.jsp";
    }
}
