package com.individual.individual2.controllers;

import com.individual.individual2.models.Account;
import com.individual.individual2.models.User;
import com.individual.individual2.repository.UserRepository;
import com.individual.individual2.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author Jeleascov Tatiana and Ciornii Andrei
 */

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping(value = "/users")
    public String listAccounts(Model model, @RequestParam(name = "findUser", required = false) String findUser) {
        List<User> users;

        if (findUser != null && !findUser.isEmpty()) {
            users = userService.searchUsers(findUser);
        } else {
            users = userService.getAllUsers();
        }

        model.addAttribute("users", users);
        return "user";
    }

    @GetMapping("/addUser")
    public String showAddUserForm(Model model) {
        model.addAttribute("user", new User());
        return "addUser";
    }

    @PostMapping("/addUser")
    public String addUser(@ModelAttribute("user") User newUser) {
        userService.saveUser(newUser);
        return "redirect:/users";
    }

    @GetMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") int userId) {
        userService.deleteUser(Math.toIntExact(userId));
        return "redirect:/users";
    }


    @GetMapping("/editUser")
    public String editUser(@RequestParam("userId") int userId, Model model) {
        User user = userService.getUserById(userId);
        model.addAttribute("user", user);
        return "editUser";
    }

    @PostMapping("/editUser")
    public String saveEditedUser(@ModelAttribute("user") User editedUser) {
        userService.saveUser(editedUser);
        return "redirect:/users";
    }

    @GetMapping("/accountsByUser")
    public String accountsByUser(@RequestParam("userId") int userId, Model model) {
        User user = userService.getUserById(userId);
        List<Account> accounts = user.getAccounts();
        model.addAttribute("accounts", accounts);
        return "AccountsByUser";
    }
}
