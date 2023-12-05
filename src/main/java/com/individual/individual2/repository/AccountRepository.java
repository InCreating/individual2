package com.individual.individual2.repository;

import com.individual.individual2.models.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    //void sortAccount();
    //void totalCount() throws SQLException;
    //void findAccount() throws IOException;

    // Метод для изменения статуса учетной записи
   // @Modifying
   // @Transactional
   // @Query("update Account a set a.status = :status where a.id = :id")
    //void changeAccountStatus(int id, boolean status);

    // Метод для получения всех учетных записей, отсортированных по имени
    //List<Account> findAllByOrderByAccountNameAsc();

    //List<Account> findByAccountName(String name);





    Account findById(int id);
    List<Account> findAll();
    Account save(Account account); //добавление и обновление данных
    void delete(Account account);
}
