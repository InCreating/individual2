package com.individual.individual2.controllers;

import com.individual.individual2.models.Account;
import com.individual.individual2.models.User;
import com.individual.individual2.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping(value = "/users")
    public String listAccounts(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "user";
    }

    @GetMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") Long userId) {
        userService.deleteUser(Math.toIntExact(userId));
        return "redirect:/users";
    }
}
