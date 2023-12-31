package com.individual.individual2.repository;

import com.individual.individual2.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
    User getById(int id);
    List<User> findAll();
    User save(User user);
    void delete(User user);

    //void specialCount() throws IOException;
}
