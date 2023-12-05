package com.individual.individual2.services;

import com.individual.individual2.models.Account;
import com.individual.individual2.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountService {
    @Autowired
    private AccountRepository accountRepository;

    public List<Account> findAllAccounts() {
        return accountRepository.findAll();
    }

    public Account findAccountById(int id) {
        return accountRepository.findById(id);
    }

    public Account saveOrUpdateAccount(Account account) {
        return accountRepository.save(account);
    }

    public void deleteAccount(int id) {
        System.out.println("Deleting account with ID: " + id);
        accountRepository.deleteById(id);
    }

   /* public void changeAccountStatus(int id, boolean status) {
        accountRepository.changeAccountStatus(id, status);
    }*/
}
