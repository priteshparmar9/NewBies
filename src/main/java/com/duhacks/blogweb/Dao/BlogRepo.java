package com.duhacks.blogweb.Dao;

import com.duhacks.blogweb.Model.Blog;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BlogRepo extends CrudRepository<Blog, Integer> {
    List<Blog> findByUsername(String username);
}
