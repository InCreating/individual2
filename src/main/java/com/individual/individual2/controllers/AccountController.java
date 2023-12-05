package com.individual.individual2.controllers;

import com.individual.individual2.models.Account;
import com.individual.individual2.services.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

@Controller
public class AccountController {
    @Autowired
    private AccountService accountService;

    @GetMapping(value = "/accounts")
    public String listAccounts(Model model) {
        List<Account> accounts = accountService.findAllAccounts();
        System.out.println(accounts.toString());
        model.addAttribute("accounts", accounts);
        return "account";
    }

    @GetMapping("/deleteAccount")
    public String deleteAccount(@RequestParam("accountId") Long accountId) {
        accountService.deleteAccount(Math.toIntExact(accountId));
        return "redirect:/accounts";
    }
}
