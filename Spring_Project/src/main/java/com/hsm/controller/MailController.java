package com.hsm.controller;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hsm.model.MailVO;

@Controller
public class MailController {
	private static final Logger logger=LoggerFactory.getLogger(MailController.class);
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value="mail", method=RequestMethod.GET)
	public void mailSendingGet() {
		logger.info("mail.jsp 실행.");
		
		// service.메일 select
		// model.addAttribute("MemberVO", formattedDate );
	}
	
	@RequestMapping(value="mail", method=RequestMethod.POST)
	public void mailSending(MailVO mail) {
		logger.info("tomail"+mail.getTomail());
		logger.info("title"+mail.getTitle());
		logger.info("content"+mail.getContent());
		logger.info("from"+mail.getFrom());

		try {
			MimeMessage message=mailSender.createMimeMessage();
			MimeMessageHelper messageHelper=new MimeMessageHelper(message,true,"utf-8");
			
			messageHelper.setFrom(mail.getFrom());//보내는사람(필수)
			messageHelper.setTo(mail.getTomail());//받는사람
			messageHelper.setSubject(mail.getTitle()); //메일 제목(생략가능)
			messageHelper.setText(mail.getContent()); //메일 내용
			
			mailSender.send(message);
		}catch(Exception e) {
			e.printStackTrace();
		}
	} 
}
