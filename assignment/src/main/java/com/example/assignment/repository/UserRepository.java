package com.example.assignment.repository;

import com.example.assignment.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends JpaRepository<User,Integer> {
        public User findByUsernameAndPassword(String username, String password);
}
