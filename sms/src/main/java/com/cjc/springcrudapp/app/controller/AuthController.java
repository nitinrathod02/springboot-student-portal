package com.cjc.springcrudapp.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.springcrudapp.app.model.Student;
import com.cjc.springcrudapp.app.service.StudentServiceI;

@Controller
public class AuthController {
	
	@Autowired
	StudentServiceI ssi;
	
	@RequestMapping("/")
	public String loginPage() {
		
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam String username, @RequestParam String password, Model m) {
	    
	    // 1. Check for Admin
	    if (username.equals("admin") && password.equals("admin123")) {
	    	
	        return "admindashboard";
	    } 
	    
	    // 2. Check for Student in Database
	    
	    Student student = ssi.findByUsername(username, password);
	    
	    if (student != null) {
	        
	    	m.addAttribute("data", student);
	        return "studentdashboard";
	    } else {
	        
	        m.addAttribute("msg", "Invalid username or password...");
	        return "login";
	    }
	}
	
	@RequestMapping("/logout")
	public String logout() {
		
		return "login";
	}
		
			
}
		
		
		
	


