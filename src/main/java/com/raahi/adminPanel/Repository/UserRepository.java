package com.raahi.adminPanel.Repository;

import com.raahi.adminPanel.model.User;

public interface UserRepository  {
    User getUserByUsername(String username);
}