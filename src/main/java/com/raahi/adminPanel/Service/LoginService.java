package com.raahi.adminPanel.Service;

import com.raahi.adminPanel.bean.RegisterRequestBean;
import com.raahi.adminPanel.model.User;

public interface LoginService {

	boolean addTourPlanner(RegisterRequestBean registerRequestBean,User user);

	void setSessionAttributes();

	boolean verifyAdminMobileNumber(String mobileNumber);

	boolean verifyRegisteredEmailId(String emailId);

}
