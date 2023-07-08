package com.example.assignment.controller;

import com.example.assignment.entity.Product;
import com.example.assignment.entity.User;
import com.example.assignment.repository.UserRepository;
import com.example.assignment.service.ProductService;
import com.example.assignment.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class ApplicationController {
    @Autowired
    private UserService userService;
    @Autowired
    public ProductService productService;
    @Autowired
    public UserRepository userRepository;

    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        request.setAttribute("mode", "modeLogin");
        return "welcome";
    }

    //    @PostMapping("/login-user")
//    public String loginPost(HttpServletRequest request, HttpServletResponse response) {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//
//        if (username.equals("admin") && password.equals("1234")) {
//            return "homepage"; // Chuyển hướng tới trang home nếu đăng nhập thành công
//        } else if (username.equals("user")&& password.equals("123")){
//            return "detail";
//        }else {
//            return "redirect:/login?error=true";
//        }
//
//    }
    @RequestMapping("/login-user")
    public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
        if (userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null) {
            return "homepage";
        } else {
            request.setAttribute("error", "Invalid Username or Password");
            request.setAttribute("mode", "modeLogin");
            return "welcome";
        }
    }

    @RequestMapping("/welcome")
    public String Welcome(HttpServletRequest request) {
        request.setAttribute("mode", "modehome");
        return "welcome";
    }

    @RequestMapping("/register")
    public String register(HttpServletRequest request) {
        request.setAttribute("mode", "modeRegister");
        return "welcome";
    }

    @PostMapping("save-user")
    public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
        userService.saveMyUser(user);
        request.setAttribute("mode", "modehome");
        return "welcome";
//        if (bindingResult.hasErrors()) {
//            // Trả về kết quả của quá trình validation
//            return "404";
//        }
//
//        // Nếu không có lỗi, lưu User vào cơ sở dữ liệu
//        userService.saveMyUser(user);
//        request.setAttribute("mode", "modehome");
//
//        // Chuyển hướng đến trang thành công
//        return "welcome";
    }


    @GetMapping("/show-user")
    public String showAllUser(HttpServletRequest request) {
        request.setAttribute("users", userService.showAllUser());
        request.setAttribute("mode", "allUser");
        return "welcome";
    }

    @RequestMapping("/delete-user")
    public String deleteUser(@RequestParam int id, HttpServletRequest request) {
        userService.deleteUser(id);
        request.setAttribute("users", userService.showAllUser());
        request.setAttribute("mode", "allUser");
        return "welcome";
    }

    //    @RequestMapping("/edit-user")
//    public String editUser(@RequestParam int id,HttpServletRequest request) {
//        request.setAttribute("user", userService.editUser(id));
//        request.setAttribute("mode", "modeUpdate");
//        return "welcome";
//    }
//    @GetMapping("/detail-product")
//    public String viewProduct(Model model) {
//        return findPaginated(1, model);
//    }
//
//    @GetMapping("/page/{pageNo}")
//    public String findPaginated(@PathVariable(value = "pageNo") int pageNo, Model model) {
//        int pageSize = 5;
//        Page<Product> page = productService.findPaginated(pageNo, pageSize);
//        List<Product> listProduct = page.getContent();
//        model.addAttribute("currentPage", pageNo);
//        model.addAttribute("totalPages", page.getTotalPages());
//        model.addAttribute("listProduct", listProduct);
//        return "detail";
//    }
    @GetMapping("view-update/{id}")
    public String viewUpdate(@PathVariable("id") Integer id, Model model) {
        User user = userRepository.findById(id).orElse(null);
        model.addAttribute("user",user);
        return "update";
    }
    @PostMapping("update")
    public String updateUser(@RequestParam("id")String id,@RequestParam("username")String username,@RequestParam("password") String password) {
        User user = User.builder()
                .id(Integer.valueOf(id))
                .username(username)
                .password(password)
                .build();
        User findUser = userRepository.findById(Integer.valueOf(id)).orElse(null);
        user.setId(findUser.getId());
        BeanUtils.copyProperties(user,findUser);
        userRepository.save(findUser);
        return "redirect:/welcome";
    }
}
