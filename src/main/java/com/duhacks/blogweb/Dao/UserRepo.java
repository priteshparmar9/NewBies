package com.duhacks.blogweb.Dao;

import com.duhacks.blogweb.Model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepo extends CrudRepository<User, String> {
    List<User> findByUsername(String username);
}
