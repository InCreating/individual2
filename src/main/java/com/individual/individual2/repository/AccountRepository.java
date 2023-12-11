package com.individual.individual2.repository;

import com.individual.individual2.models.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Sort;

import java.util.List;

/**
 * @author Jeleascov Tatiana
 */

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    Account findById(int id);
    List<Account> findAll(Sort sort);
    Account save(Account account);
    void deleteById(Integer id);

    @Query("SELECT SUM(a.balance) FROM Account a")
    Long sumOfField();
}
