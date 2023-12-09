package com.individual.individual2.controllers;

import com.individual.individual2.models.Account;
import com.individual.individual2.models.User;
import com.individual.individual2.services.AccountService;
import com.individual.individual2.services.UserService;
import jakarta.servlet.http.HttpServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AccountController extends HttpServlet {
    @Autowired
    private AccountService accountService;
    @Autowired
    private final UserService userService;

    @Autowired
    public AccountController(AccountService accountService, UserService userService) {
        this.accountService = accountService;
        this.userService = userService;
    }

    @GetMapping(value = "/accounts")
    public String listAccounts(@RequestParam(required = false) String sort, Model model) {
        List<Account> accounts;
        if ("balance".equals(sort)) {
            accounts = accountService.findAllAccountsSortedByBalance();
        } else {
            accounts = accountService.findAllAccounts();
        }
        Long sumOfField = accountService.sumOfField();
        model.addAttribute("accounts", accounts);
        model.addAttribute("sumOfField", sumOfField);
        return "account";
    }


    @GetMapping("/addAccount")
    public String showAddAccountForm(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "addAccount";
    }

    @PostMapping("/addAccount")
    public String addAccount(@RequestParam("balance") Double balance,
                             @RequestParam("available") boolean available,
                             @RequestParam("user_id") int userId) {
        // Создаем новый аккаунт и сохраняем его в базе данных
        User user = userService.getUserById(userId);
        Account newAccount = new Account(user, balance, available);
        accountService.saveOrUpdateAccount(newAccount);

        return "redirect:/accounts";
    }

    @GetMapping("/deleteAccount")
    public String deleteAccount(@RequestParam("accountId") int accountId) {
        accountService.deleteAccount(accountId);
        return "redirect:/accounts";
    }

    @GetMapping("/editAccount")
    public String editAccount(@RequestParam("accountId") int accountId, Model model) {
        Account account = accountService.findAccountById(accountId);
        model.addAttribute("account", account);
        model.addAttribute("user_id", account.getUser().getUserId());
        return "editAccount";
    }


    @PostMapping("/editAccount")
    public String saveEditedAccount(@ModelAttribute("account") Account editedAccount, @RequestParam("user_id") int userId) {
        User user = userService.getUserById(userId);
            editedAccount.setUser(user);
            accountService.saveOrUpdateAccount(editedAccount);
        return "redirect:/accounts";
    }
}
