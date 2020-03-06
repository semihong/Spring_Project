package com.hsm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hsm.model.MemberVO;
import com.hsm.service.MemberService;

@Controller
@RequestMapping("/log")
public class LogController {
	
	@Autowired
	private MemberService mservice;

	private static final Logger logger=
			LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public void registGET() throws Exception{
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	
	public String registPOST(MemberVO member,HttpServletRequest req) throws Exception{

	HttpSession session=req.getSession();
	member = mservice.login(member);
	if(member == null) {
		  session.setAttribute("member", null);
		  return "/log/login";
	}else {
		  session.setAttribute("member", member);
			return "redirect:/";
	}
	}
	//로그아웃
	@RequestMapping(value="logout",method=RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		System.out.println("호ㅓㄱㅇㄹㄴ");
		session.invalidate();
		return "redirect:../";
	}
}