package com.cjc.springcrudapp.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cjc.springcrudapp.app.model.Admin;

@Repository
public interface AdminRepository  extends JpaRepository<Admin, Long>{

}
