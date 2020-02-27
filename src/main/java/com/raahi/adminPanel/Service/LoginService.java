package com.raahi.adminPanel.Service;

import com.raahi.adminPanel.bean.RegisterRequestBean;
import com.raahi.adminPanel.model.User;

public interface LoginService {

	boolean addTourPlanner(RegisterRequestBean registerRequestBean,User user);

	void setSessionAttributes();

}
