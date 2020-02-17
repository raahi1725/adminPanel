package com.raahi.adminPanel.Service.Impl;


import java.util.Date;

import org.springframework.stereotype.Component;

import com.raahi.adminPanel.Service.LoginService;
import com.raahi.adminPanel.model.TourPlannerMasterModel;

@Component
public class LoginServiceImpl implements LoginService {

	@Override
	public boolean addTourPlanner(TourPlannerMasterModel tourPlannerMasterModel) {
		
		tourPlannerMasterModel.setRegisteredDate(new Date());
		tourPlannerMasterModel.setStartDate(new Date());
		return false;
	}

}
