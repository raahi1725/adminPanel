package com.raahi.adminPanel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.raahi.adminPanel.Service.LoginService;
import com.raahi.adminPanel.Service.SecurityService;
import com.raahi.adminPanel.Service.UserService;
import com.raahi.adminPanel.bean.RegisterRequestBean;
import com.raahi.adminPanel.bean.SessionUserBean;
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
	
	@Autowired
	private SessionUserBean sessionUserBean;
	
	
	@GetMapping("/login")
	public String login(Model model, String error, String logout) {
		 model.addAttribute("registerRequestBean", new RegisterRequestBean());
		 model.addAttribute("errorCode","");
	    if (error != null) {
	        model.addAttribute("error", "Your username and password is invalid.");
	    	model.addAttribute("errorCode", "101");
	    }
	
	    if (logout != null)
	        model.addAttribute("message", "You have been logged out successfully.");
	   
	    return "login";
	}
	
	@GetMapping("/register")
    public String registration(Model model) {
        model.addAttribute("registerRequestBean", new RegisterRequestBean());
        return "register";
    }

	@GetMapping({"/", "/welcome"})
	public String welcome(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		sessionUserBean.setUserName(userName);
		loginService.setSessionAttributes();
		model.addAttribute("user", new User()); 
	    return "dashboard";
	}
	
	@PostMapping(value = "/register")
	public String addTourPlanner(@ModelAttribute("registerRequestBean") RegisterRequestBean registerRequestBean,
			BindingResult bindingResult) {
		User userForm = new User();
		userForm.setUsername(registerRequestBean.getUsername());
		userForm.setPassword(registerRequestBean.getPassword());
		userValidator.validate(userForm, bindingResult);
		userService.save(userForm);
	    loginService.addTourPlanner(registerRequestBean,userForm);
	  
        securityService.autoLogin(userForm.getUsername(), registerRequestBean.getPassword());
        return "redirect:/welcome";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)  
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {  
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();  
        if (auth != null){      
           new SecurityContextLogoutHandler().logout(request, response, auth);  
        }  
         return "redirect:/";  
     }  
		
}
