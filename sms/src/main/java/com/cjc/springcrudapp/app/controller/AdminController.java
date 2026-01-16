package com.cjc.springcrudapp.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.springcrudapp.app.model.Admin;
import com.cjc.springcrudapp.app.model.Student;
import com.cjc.springcrudapp.app.service.AdminServiceI;
import com.cjc.springcrudapp.app.service.StudentServiceI;

@Controller
public class AdminController {
	
	@Autowired
	AdminServiceI asi;
	
	@Autowired
	StudentServiceI ssi;
	
	
	@RequestMapping("/viewStudents")
	public String getAllStudent( Model m) {
		List<Student> list=ssi.getAllStudent();
		m.addAttribute("data", list);
		return "viewstudent";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam long id,Model m) {
		
		List<Student> list=ssi.deleteStudent(id);
		m.addAttribute("data", list);
		return "viewstudent";
	}
	
	@RequestMapping("/paging")
	public String paging(int pagenumber,Model m) {
		
		List<Student> list=ssi.paging(pagenumber, 2);
		m.addAttribute("data", list);
		return "viewstudent";
	}

}
