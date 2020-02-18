package com.raahi.adminPanel.Repository.Impl;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.raahi.adminPanel.Repository.UserRepository;
import com.raahi.adminPanel.model.User;
@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository {
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public User getUserByUsername(String username) {
        Query<User> query = sessionFactory.getCurrentSession().createQuery("FROM User u where u.username=:username", User.class);
        query.setParameter("username", username);
        return query.uniqueResult();
    }
}