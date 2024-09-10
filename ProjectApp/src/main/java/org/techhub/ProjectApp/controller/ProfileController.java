package org.techhub.ProjectApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.techhub.ProjectApp.model.Register;
import org.techhub.ProjectApp.service.RegisterService;

import javax.servlet.http.HttpSession;

@Controller
public class ProfileController {

    @Autowired
    private RegisterService regService;

    @RequestMapping(value = "/viewprof", method = RequestMethod.GET)
    public String viewProfile(HttpSession session, Model model) {
       
        String email = (String) session.getAttribute("email");
        
        System.out.println(email);
        if (email != null) {
           
            Register register = new Register();
            register.setEmail(email);

            Register userProfile = regService.getUserProfileByEmail(register);
            System.out.println(userProfile);
            
            System.out.println(userProfile.getEmail()+" "+userProfile.getPassword());
            
            if (userProfile != null) {
                model.addAttribute("name", userProfile.getName());
                model.addAttribute("email", userProfile.getEmail());
                model.addAttribute("password", userProfile.getPassword());
                model.addAttribute("contact", userProfile.getContact());
                model.addAttribute("role", userProfile.getRole());
            }
        }
        return "viewprofile";
    }
}
