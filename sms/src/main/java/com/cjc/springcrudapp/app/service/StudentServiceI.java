package com.cjc.springcrudapp.app.service;

import java.util.List;

import com.cjc.springcrudapp.app.model.Student;

public interface StudentServiceI {
	
	public Student findByUsername(String username,String password);
	public void saveStudent(Student student);
	public List<Student> getAllStudent();
	public List<Student> deleteStudent(long id);
	public List<Student> paging(int pagenumber,int pagesize);

}
