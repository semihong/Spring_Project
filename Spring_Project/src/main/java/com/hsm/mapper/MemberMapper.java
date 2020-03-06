package com.hsm.mapper;

import com.hsm.model.MemberVO;

public interface MemberMapper {
	//회원가입 서밋
	public void MemberSignup(MemberVO member)throws Exception;
	//중복체크
	public int idChk (String id)throws Exception;
	//로그인
	public MemberVO login(MemberVO member) throws Exception;
	

}
