package com.spring.mvc.servic;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class BulkMailService {


	@Autowired
	private JavaMailSender mailSender;

	public  void sendMails(String receiver , String subject, String body) {

		MimeMessage message = this.mailSender.createMimeMessage();
		MimeMessageHelper mimeHelper;

		try {
			mimeHelper = new MimeMessageHelper(message, true);
			mimeHelper.setTo(receiver);
			mimeHelper.setFrom("abcjob36@gmail.com");
			mimeHelper.setSubject(subject);
			mimeHelper.setText(body, true);
			mailSender.send(message);

		} catch (MessagingException e) {
			System.out.println("Error Sending message" + e.getMessage());
		}

	}

}
