package com.hsm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hsm.model.MemberVO;
import com.hsm.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService mservice;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value = "member", method = RequestMethod.GET)
	public void signupGET() throws Exception {
	}

	// 회원가입
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public String signupPOST(MemberVO member) throws Exception {
		mservice.MemberSignup(member);
		return "dashBoard";
	}
	// 중복체크
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	@ResponseBody
	public int idChk(@RequestBody String id) throws Exception {
		id=id.replace("=","");
		System.out.println(id);
		int result = mservice.idChk(id);
		System.out.println("idChk result="+result);
		
		return result;

	}
	

}


