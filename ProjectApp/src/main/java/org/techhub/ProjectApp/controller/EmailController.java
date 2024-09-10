package org.techhub.ProjectApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmailController {
     
	@RequestMapping(value = "/sendEmail")
	public String SendEmail(Model model) {
		return "sendemail";
	}
		
}
