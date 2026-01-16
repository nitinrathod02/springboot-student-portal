package com.cjc.springcrudapp.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cjc.springcrudapp.app.model.Student;
import com.cjc.springcrudapp.app.service.StudentServiceI;

@Controller
public class StudentController {
	
	@Autowired
	StudentServiceI ssi;
	
	
	@RequestMapping("/register")
	public String preRegister() {
		
		return "register";
	}
	
	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute Student student,Model m) {
		
		ssi.saveStudent(student);
		m.addAttribute("msg", "Student added successfullyyy....");
		return "login";
	}

}
