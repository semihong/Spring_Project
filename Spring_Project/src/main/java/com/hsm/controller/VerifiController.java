package com.hsm.controller;
/*
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hsm.service.VerifiService;

@Controller
public class VerifiController {
	
	@Autowired
	private VerifiService vservice;
	
	private static final Logger logger = LoggerFactory.getLogger(VerifiController.class);
	private static final String String = null;
	

	@RequestMapping(value="/createEmailCheck.do", method=RequestMethod.GET)
	@ResponseBody
	public boolean createEmailCheck(@RequestParam String userEmail, @RequestParam int random, HttpServletRequest req){
	//이메일 인증
	int ran = new Random().nextInt(900000) + 100000;
	HttpSession session = req.getSession(true);
	String authCode = String.valueOf(ran);
	session.setAttribute("authCode", authCode);
	session.setAttribute("random", random);
	String subject = "회원가입 인증 코드 발급 안내 입니다.";
	StringBuilder sb = new StringBuilder();
	sb.append("귀하의 인증 코드는 " + authCode + "입니다.");
	return vservice.send(subject, sb.toString(), from, userEmail, null);
	//return VerifiService.send(subject, sb.toString(), sendEmailId, userEmail, null);
	}
}

*/