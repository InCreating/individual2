package com.individual.individual2.services;

import com.individual.individual2.models.Account;
import com.individual.individual2.repository.AccountRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Jeleascov Tatiana
 */

@Service
@Slf4j
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

    @Transactional
    public void deleteAccount(int id) {
        log.info("Deleting user {}", id);
        accountRepository.deleteById(id);
        log.info("Deleted user {}", id);
    }

    public Long sumOfField() { return  accountRepository.sumOfField();}

    public List<Account> findAllAccountsSortedByBalance() {
        return accountRepository.findAll(Sort.by(Sort.Direction.DESC, "balance"));
    }
}
