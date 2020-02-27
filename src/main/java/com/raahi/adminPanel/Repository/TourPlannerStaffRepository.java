package com.raahi.adminPanel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.raahi.adminPanel.model.TourPlannerStaffModel;
import com.raahi.adminPanel.model.User;

public interface TourPlannerStaffRepository extends JpaRepository<TourPlannerStaffModel, Integer> {

	void findbyUser(User user);

}
