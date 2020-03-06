package com.hsm.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hsm.model.Criteria;
import com.hsm.model.ReplyVO;

@Repository
	public class ReplyMapperImpl implements ReplyMapper{

@Autowired
private SqlSession sqlSession;
private static final String namespace="com.hsm.mapper.ReplyMapper";

@Override
public List<ReplyVO> replylist(int bno) throws Exception {
	List list=sqlSession.selectList(namespace+".repboardList",bno);
	return list;
}
//글쓰기
@Override
public void RepWrite(ReplyVO vo) throws Exception {
	sqlSession.insert(namespace+".repboardWrite",vo);
}

//수정
@Override
public void RepModify(ReplyVO vo) throws Exception {
	sqlSession.update(namespace+".repboardModify",vo);
}
//삭제
@Override
public void RepDel(int rno) throws Exception {
	sqlSession.delete(namespace+".repboardDel",rno);

}
@Override
public  List<ReplyVO> Replylist(int bno,Criteria cri) throws Exception {
	
	Map<String, Object> paramMap=new HashMap<>();
	paramMap.put("bno", bno);
	paramMap.put("cri",cri);
	
	List list=sqlSession.selectList(namespace+".repboardListPage",paramMap);
	return list;
}
@Override
public int count(int bno) throws Exception {
	return sqlSession.selectOne(namespace+".count",bno);
}

}
