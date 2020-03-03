package com.raahi.adminPanel.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.raahi.adminPanel.bean.SessionBean;
import com.raahi.adminPanel.model.TourPlannerStaffModel;

public interface TourPlannerStaffRepository extends JpaRepository<TourPlannerStaffModel, Integer> {

	@Query("select new com.raahi.adminPanel.bean.SessionBean(a.tourPlannerStaffId,a.firstName,a.lastName,a.role,a.regNo,"
			+ "b.username, c.tourPlannerBranchId,c.branchName,c.headBranch,d.tourPlannerMasterId,d.tourPlannerName) "
			+ "from TourPlannerStaffModel a "
			+ "left join User b on a.user.id=b.id "
			+ "left join TourPlannerBranchModel c on a.tourPlannerBranchModel.tourPlannerBranchId=c.tourPlannerBranchId "
			+ "left join TourPlannerMasterModel d on d.tourPlannerMasterId=c.tourPlannerMasterModel.tourPlannerMasterId "
			+ "where b.username=:username ")
	List<SessionBean> getLoginDetails(String username);

	TourPlannerStaffModel findByContactNo(String mobileNumber);

	TourPlannerStaffModel findByEmail(String emailId);

}
