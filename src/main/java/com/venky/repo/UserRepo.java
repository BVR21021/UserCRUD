package com.venky.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.venky.model.Users;
@Repository
public interface UserRepo extends CrudRepository<Users, Integer> {

}
