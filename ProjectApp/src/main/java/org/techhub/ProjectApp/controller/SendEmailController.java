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
    public String doSendEmail(HttpServletRequest request, Map<String, Object> map) {
        // Get email form input
        String recipientAddresses = request.getParameter("recipient"); // Expecting comma-separated emails
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Debugging info
        System.out.println("Recipient Addresses: " + recipientAddresses);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + message);

        // Check for null or empty values
        if (recipientAddresses == null || recipientAddresses.isEmpty() ||
            subject == null || subject.isEmpty() ||
            message == null || message.isEmpty()) {
            return "Error"; // Error page if input is missing
        }

        // Split recipient emails by commas
        String[] recipientList = recipientAddresses.split("\\s*,\\s*"); // Split by commas and trim spaces

        // Create and send the email to multiple recipients
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientList);  // Pass array of email addresses
        email.setSubject(subject);
        email.setText(message);

        try {
            mailSender.send(email);  // Send email
            map.put("m", "Email sent successfully to all recipients!");
        } catch (Exception e) {
            e.printStackTrace(); // Debugging info
            request.setAttribute("exception", e);
            return "Error";
        }

        // Forward to the view named "Result"
        return "admindashboard";
    }
}
