package com.raahi.adminPanel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.raahi.adminPanel.model.CustomerModel;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerModel, Integer>{

}
