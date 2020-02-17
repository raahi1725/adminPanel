package com.raahi.adminPanel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.raahi.adminPanel.model.TourPlannerMasterModel;

public interface TourPlannerBranchRepository extends JpaRepository<TourPlannerMasterModel, Integer> {

}
