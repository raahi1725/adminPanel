package com.raahi.adminPanel.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.raahi.adminPanel.bean.CustomerBean;
import com.raahi.adminPanel.model.CustomerModel;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerModel, Integer>{

	@Query("select new com.raahi.adminPanel.bean.CustomerBean(a.customerId,CONCAT(COALESCE(a.regNo,''),'-',COALESCE(a.firstName,''),' ',"
			+ "COALESCE(a.lastName,''),'-',COALESCE(a.contactNo,'')) )"
		 + "from CustomerModel a where a.regNo like CONCAT('%', :searchParameter ,'%') or a.firstName like CONCAT('%', :searchParameter ,'%')"
		 + "or a.lastName like CONCAT('%', :searchParameter ,'%') or a.contactNo like CONCAT('%', :searchParameter ,'%') ")
	List<CustomerBean> searchCustomer(@Param("searchParameter") String searchParameter);
	
	@Query("select new com.raahi.adminPanel.bean.CustomerBean(COALESCE(a.customerId,0),COALESCE(a.tourPlannerMasterModel.tourPlannerMasterId,0),"
			 + "COALESCE(a.tourPlannerBranchModel.tourPlannerBranchId,0),COALESCE(a.firstName,''),COALESCE(a.lastName,''),COALESCE(a.middleName,''),"
			 + "COALESCE(a.regNo,''),COALESCE(a.regDate,''),COALESCE(a.gender,''),COALESCE(a.birthDate,''),COALESCE(a.bloodGroup,''),COALESCE(a.address,''),"
			 + "COALESCE(a.state,'0'),COALESCE(a.city,'0'),COALESCE(a.country,'0'),a.pinCode,a.casteCategory,a.occupation,a.nationality,"
			 + "COALESCE(a.emailId,''),COALESCE(a.contactNo,''),COALESCE(a.altContactNo,''),COALESCE(a.referalCodeId,''),COALESCE(a.hearedFrom,''),"
			 + "COALESCE(a.other,''),COALESCE(a.photoIdNames,''),COALESCE(a.photoIdFilePath,''),COALESCE(a.customerPhotoName,''),COALESCE(a.customerPhotoPath,''),COALESCE(a.cDate,'')) "
			 + "from CustomerModel a where a.customerId=:customerId ")
	CustomerBean getCustomerDetails(@Param("customerId") Integer customerId);

	@Query("select Cast(MAX(COALESCE(a.regNo,0)) as string) from CustomerModel a where a.tourPlannerBranchModel.tourPlannerBranchId=:tourPlannerBranchId ")
	String getMaxRegNo(Integer tourPlannerBranchId);

}
