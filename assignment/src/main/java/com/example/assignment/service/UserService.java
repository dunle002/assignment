package com.example.assignment.service;

import com.example.assignment.entity.User;
import com.example.assignment.repository.UserRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class UserService {
    private final UserRepository userRepository;
    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }
    public void saveMyUser(User user){

        userRepository.save(user);
    }
    public List<User> showAllUser(){
        List<User> user = new ArrayList<User>();
        for (User users:userRepository.findAll()){
            user.add(users);
        }
        return user;
    }
    public void deleteUser(int id){
        userRepository.deleteById(id);
    }
//    public User editUser(int id, User updatedUser) {
//        User userToEdit = userRepository.findOne(id);
//        if (userToEdit == null) {
//            // xử lý lỗi ở đây nếu không tìm thấy user với id truyền vào
//        }
//        userToEdit.setUsername(updatedUser.getUsername());
//        userToEdit.setPassword(updatedUser.getPassword());
//        // Cập nhật các trường thông tin khác tùy theo yêu cầu của hệ thống
//        return userRepository.save(userToEdit);
//    }
//    public User editUser(int id){
//       return userRepository.findOne(id);
//    }
        public User findByUsernameAndPassword(String username, String password){
        return userRepository.findByUsernameAndPassword(username, password);
    }
}
