package com.raahi.adminPanel.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.raahi.adminPanel.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
	
}
