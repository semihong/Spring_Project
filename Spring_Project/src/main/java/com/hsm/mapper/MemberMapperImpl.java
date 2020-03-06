package com.hsm.mapper;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hsm.model.MemberVO;
@Repository

public class MemberMapperImpl implements MemberMapper {

	@Inject
private SqlSession sqlSession;
private static final String namespace="com.hsm.mapper.MemberMapper";

	@Override
public void MemberSignup(MemberVO member) throws Exception {
		sqlSession.insert(namespace+".MemberSignup",member);

}

	@Override
	public int idChk(String id) throws Exception {
		int result = sqlSession.selectOne(namespace+".idChk", id);
		return result;
	}

	@Override
	public MemberVO login(MemberVO log)throws Exception {
		MemberVO member=sqlSession.selectOne(namespace+".login",log);
		return member;
	}



}