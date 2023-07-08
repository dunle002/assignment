package com.example.assignment.controller;

import com.example.assignment.entity.User;
import com.example.assignment.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@org.springframework.web.bind.annotation.RestController
public class RestController {
    @Autowired
    private UserService userService;
    @GetMapping("/save-user")
    public String saveUser(@RequestParam String username,@RequestParam String password){
        User user = new User(username,password);
        userService.saveMyUser(user);
        return  "usersave";
    }
}
