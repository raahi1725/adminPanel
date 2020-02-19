package com.raahi.adminPanel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.raahi.adminPanel.Service.LoginService;
import com.raahi.adminPanel.Service.SecurityService;
import com.raahi.adminPanel.Service.UserService;
import com.raahi.adminPanel.bean.RegisterRequestBean;
import com.raahi.adminPanel.model.User;
import com.raahi.adminPanel.validator.UserValidator;
@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@Autowired
	private UserValidator userValidator;
	 
	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;
	
	
	@GetMapping("/login")
	public String login(Model model, String error, String logout) {
	    if (error != null)
	        model.addAttribute("error", "Your username and password is invalid.");
	
	    if (logout != null)
	        model.addAttribute("message", "You have been logged out successfully.");
	
	    return "login";
	}
	
	@GetMapping("/register")
    public String registration(Model model) {
        model.addAttribute("RegisterRequestBean", new RegisterRequestBean());

        return "register";
    }

    @PostMapping("/register")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "register";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }
		 
	@GetMapping({"/", "/welcome"})
	public String welcome(Model model) {
		model.addAttribute("user", new User()); 
	    return "dashboard";
	}
	
	@PostMapping(value = "/tourPlanner")
	@ResponseBody
	public String addTourPlanner(@RequestBody RegisterRequestBean registerRequestBean,
			BindingResult bindingResult) {
		User userForm = new User();
		userForm.setUsername(registerRequestBean.getAdminContactNo());
		userForm.setPassword(registerRequestBean.getAdminPassword());
		userValidator.validate(registerRequestBean, bindingResult);
		if (bindingResult.hasErrors()) {
            return "register";
        }
	    loginService.addTourPlanner(registerRequestBean);
	    userService.save(userForm);
        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());
        return "redirect:/welcome";
}
		
}
