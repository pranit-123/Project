package org.techhub.ProjectApp.controller;

import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.techhub.ProjectApp.model.Login;
import org.techhub.ProjectApp.model.Register;
import org.techhub.ProjectApp.service.RegisterService;

@Controller
public class HomeController {


    @Autowired
    RegisterService regService;
    

    @RequestMapping(value = "/")
    public String test() {
        return "index";
    }
    
    @RequestMapping("/reg")
    public String showRegister() {
        return "register";
    }
    
    @RequestMapping(value = "/register")
    public String register(Register register, Map<String, Object> map) {
        boolean isSuccess = regService.isAddRegister(register);
        System.out.println(isSuccess);
        
        if (isSuccess) {
        	
            map.put("msgforreg", "Registration Success. Please log in.");
            return "login";  
            
        } else {
        	
            map.put("msgforreg", "User already exists...");
            return "register";
        }
    }
    
    @RequestMapping(value = "/log")
    public String login() {
        return "login";
    }
    
   @RequestMapping(value = "/dash")
   public String Dashboard(Login model, Map<String, Object> map, HttpSession session,Register register) {
      boolean isValid = regService.isValidateUser(model);
      String email = model.getEmail();
      String pass = model.getPassword();
      if(email.equals("admin@123456") && pass.equals("admin@123456")) 
       {
    	  session.setAttribute("role","all");
      	   return "admindashboard";
        }
        else if (isValid) 
        {
        	String role=regService.getRoleUsingEmailAndPassword(model.getEmail(),model.getPassword());
        	session.setAttribute("email",model.getEmail());
        	session.setAttribute("password", model.getPassword());
        	session.setAttribute("role",role);
            return "userdashboard";
        } 
       else {
           map.put("msg1", "Invalid username or password");
          
           return "login";
       }
   }
    @RequestMapping("/indpage")
    public String IndexPage() {
    	return "index";
    }
    @RequestMapping("/dashb")
    public String Dash() {
    	return "admindashboard";
    }
    
    @RequestMapping("/submit")
    public String ContactForm() {
    	return "contact";
    }
    
}

