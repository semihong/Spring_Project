package com.hsm.service;

import com.hsm.model.MemberVO;

public interface MemberService {

		public void MemberSignup(MemberVO member)throws Exception;

		public int idChk(String id)throws Exception;

		public MemberVO login(MemberVO member) throws Exception;
		
	}

