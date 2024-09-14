package org.techhub.ProjectApp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SendEmailController {

    @Autowired
    private JavaMailSender mailSender;

    @RequestMapping("/sendEmails")
    public String SendEmail() {
    	return "sendemail";   //jsp page 
    }
    @RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
    public String doSendEmail(HttpServletRequest request, Map map) {
        // takes input from e-mail form
        String recipientAddress = request.getParameter("recipient");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Debugging info
        System.out.println("Recipient Address: " + recipientAddress);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + message);

        System.out.println("============"+recipientAddress+" "+subject+" "+message+"===============");
        
        // Check for null or empty values
        if (recipientAddress == null || recipientAddress.isEmpty() ||
            subject == null || subject.isEmpty() ||
            message == null || message.isEmpty()) {
            return "Error";
        }

        // Create and send the email
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(message);
        
        try {
            mailSender.send(email);
            map.put("m", "Email send Suceessfully...! ");
            
        } catch (Exception e) {
            e.printStackTrace(); // Print stack trace for debugging
            request.setAttribute("exception", e);
            return "Error";
        }

        // Forward to the view named "Result"
        return " Result";
    }
}
