package com.raahi.adminPanel.Service;

import java.util.List;

import com.raahi.adminPanel.model.User;

public interface UserService {
	Boolean save(User user);

    User findByUsername(String username);

	List<User> getUserGrid();
}
