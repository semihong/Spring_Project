package com.hsm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.mapper.MemberMapper;
import com.hsm.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper mm;
	
	@Override
	public void MemberSignup(MemberVO member) throws Exception {
		mm.MemberSignup(member);

	}

	@Override
	public int idChk(String id) throws Exception {
			int result = mm.idChk(id);
			return result;
		
	
	}
	@Override
	public MemberVO login(MemberVO member) throws Exception {
		return mm.login(member);
	}

}
