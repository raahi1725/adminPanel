package com.raahi.adminPanel.Service;

import com.raahi.adminPanel.bean.RegisterRequestBean;

public interface LoginService {

	boolean addTourPlanner(RegisterRequestBean registerRequestBean);

	void setSessionAttributes();

}
