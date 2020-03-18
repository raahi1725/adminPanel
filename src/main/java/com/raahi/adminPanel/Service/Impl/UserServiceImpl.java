package com.raahi.adminPanel.Service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.raahi.adminPanel.Repository.UserRepository;
import com.raahi.adminPanel.Service.UserService;
import com.raahi.adminPanel.model.User;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public Boolean save(User user) {
        try {
			user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
			userRepository.save(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
	@Override
	public List<User> getUserGrid() {
		try {
			return userRepository.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ArrayList<>();
	}

}
