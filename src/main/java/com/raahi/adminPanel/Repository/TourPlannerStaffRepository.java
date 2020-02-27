package com.raahi.adminPanel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.raahi.adminPanel.model.TourPlannerStaffModel;

public interface TourPlannerStaffRepository extends JpaRepository<TourPlannerStaffModel, Integer> {

	@Query("select new com.raahi.adminPanel.bean.SessionUserBean(a.tourPlannerStaffId,a.firstName,a.lastName,a.role,a.regNo,"
			+ "b.username, c.tourPlannerBranchId,c.branchName,c.headBranch,d.tourPlannerMasterId,d.tourPlannerName) "
			+ "from TourPlannerStaffModel a "
			+ "left join User b on a.user.id=b.id "
			+ "left join TourPlannerBranchModel c on a.tourPlannerBranchModel.tourPlannerBranchId=c.tourPlannerBranchId "
			+ "left join TourPlannerMasterModel d on d.tourPlannerMasterId=c.tourPlannerMasterModel.tourPlannerMasterId ")
	void getLoginDetails(String username);

	//void findbyUser(User user);

}
