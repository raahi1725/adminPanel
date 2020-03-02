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
			+ "COALESCE(a.lastName,''),' ',COALESCE(a.contactNo,'') as serachedField )"
		 + "from CustomerModel a where a.regNo like CONCAT('%', :searchParameter ,'%') or a.firstName like CONCAT('%', :searchParameter ,'%')"
		 + "or a.lastName like CONCAT('%', :searchParameter ,'%') or a.contactNo like CONCAT('%', :searchParameter ,'%') ")
	List<CustomerBean> searchCustomer(@Param("searchParameter") String searchParameter);
	
	@Query("select new com.raahi.adminPanel.bean.CustomerBean(a.customerId,a.tourPlannerMasterModel.tourPlannerMasterId,"
			 + "a.tourPlannerBranchModel.tourPlannerBranchId,a.firstName,a.lastName,a.middleName,a.regNo,a.regDate,a.gender,a.birthDate,a.bloodGroup,a.address,"
			 + "a.state,a.city,a.country,a.pinCode,a.casteCategory,a.Occupation,a.nationality,a.emailId,a.contactNo,a.altContactNo,a.referalCodeId,a.hearedFrom,"
			 + "a.other,a.photoIdNames,a.photoIdFilePath,a.customerPhotoName,a.customerPhotoPath,a.cDate) "
			 + "from CustomerModel a where a.customerId=:customerId ")
	CustomerBean getCustomerDetails(@Param("customerId") String customerId);

	@Query("select MAX(a.regNo) from CustomerModel a where a.tourPlannerBranchModel.tourPlannerBranchId=:tourPlannerBranchId ")
	Long getMaxRegNo(Integer tourPlannerBranchId);

}
