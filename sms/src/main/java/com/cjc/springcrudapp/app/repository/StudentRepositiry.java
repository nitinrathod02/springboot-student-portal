package com.cjc.springcrudapp.app.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cjc.springcrudapp.app.model.Student;

@Repository
public interface StudentRepositiry extends JpaRepository<Student, Long>{
	
	
	
	    public Student findByUsernameAndPassword(String username,String password);
	}



