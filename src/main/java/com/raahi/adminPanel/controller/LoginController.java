package com.raahi.adminPanel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.raahi.adminPanel.Service.LoginService;
import com.raahi.adminPanel.bean.RegisterRequestBean;
import com.raahi.adminPanel.bean.UserDetailsBean;
import com.raahi.adminPanel.model.User;
@SessionAttributes({"currentUser"})
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
	
/*	@GetMapping(value = "/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("errorMsg", "Your username and password are invalid.");

        if (logout != null)
            model.addAttribute("msg", "You have been logged out successfully.");

        return "login.jsp";
    }*/
	
	@GetMapping(value = "/register")
    public String register() {
    	return "register.jsp";
    }
	
	@GetMapping(value = "/index")
    public String index() {
    	return "index.jsp";
    }
	
	@PostMapping(value = "/tourPlanner")
	@ResponseBody
    public boolean addTourPlanner(@RequestBody RegisterRequestBean registerRequestBean) {
    	return loginService.addTourPlanner(registerRequestBean);
    }
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }
    @RequestMapping(value = "/loginFailed", method = RequestMethod.GET)
    public String loginError(Model model) {
        model.addAttribute("error", "true");
        return "login";
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(SessionStatus session) {
        SecurityContextHolder.getContext().setAuthentication(null);
        session.setComplete();
        return "redirect:/welcome";
    }
    @RequestMapping(value = "/postLogin", method = RequestMethod.POST)
    public String postLogin(Model model, HttpSession session) {
        UsernamePasswordAuthenticationToken authentication = (UsernamePasswordAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
        validatePrinciple(authentication.getPrincipal());
        User loggedInUser = ((UserDetailsBean) authentication.getPrincipal()).getUserDetails();
        model.addAttribute("currentUser", loggedInUser.getUsername());
        session.setAttribute("userId", loggedInUser.getId());
        return "redirect:/wallPage";
    }
    private void validatePrinciple(Object principal) {
        if (!(principal instanceof UserDetailsBean)) {
            throw new  IllegalArgumentException("Principal can not be null!");
        }
    }
	
	
}
