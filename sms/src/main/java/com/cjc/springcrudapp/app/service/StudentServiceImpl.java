package com.cjc.springcrudapp.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.cjc.springcrudapp.app.model.Student;
import com.cjc.springcrudapp.app.repository.StudentRepositiry;

@Service
public class StudentServiceImpl implements StudentServiceI{
	
	@Autowired
	StudentRepositiry sr;

	@Override
	public Student findByUsername(String username,String password) {
		
		Student student=sr.findByUsernameAndPassword(username,password);
		
		return student;
		
	}

	@Override
	public void saveStudent(Student student) {

     sr.save(student);
		
	}

	@Override
	public List<Student> getAllStudent() {
		// TODO Auto-generated method stub
		return sr.findAll();
	}

	@Override
	public List<Student> deleteStudent(long id) {
		sr.deleteById(id);
		return sr.findAll();
	}

	@Override
	public List<Student> paging(int pagenumber, int pagesize) {
		
		return sr.findAll(PageRequest.of(pagenumber, pagesize)).getContent();
	}

}
