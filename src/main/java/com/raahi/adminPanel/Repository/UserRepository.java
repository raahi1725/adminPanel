package com.raahi.adminPanel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.raahi.adminPanel.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
