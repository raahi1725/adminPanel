package com.raahi.adminPanel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.raahi.adminPanel.bean.RegisterRequestBean;

@Controller
public class PackageController {

	@RequestMapping(value = "/packages", method = RequestMethod.GET)
    public ModelAndView dashboard(Model model) {
		model.addAttribute("registerRequestBean", new RegisterRequestBean());
    	return new ModelAndView("packages");
    }
}
