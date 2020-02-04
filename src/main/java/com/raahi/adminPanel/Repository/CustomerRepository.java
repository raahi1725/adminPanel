package com.raahi.adminPanel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.raahi.adminPanel.model.CustomerModel;

public interface CustomerRepository extends JpaRepository<CustomerModel, Integer>{

}
