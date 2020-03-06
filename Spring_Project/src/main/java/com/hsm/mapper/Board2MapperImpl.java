package com.hsm.mapper;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hsm.model.Board2Vo;
import com.hsm.model.Criteria;

@Repository
public class Board2MapperImpl implements Board2Mapper{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.hsm.mapper.Board2Mapper";
	//전체 목록 리스트 
	@Override
	public List<Board2Vo> boardList() {
		List list=sqlSession.selectList(namespace+".boardList");
		return list;
	}
	//전체 목록 리스트( 페이징 처리)

	@Override
	public List<Board2Vo> boardListPaging(Criteria cri) throws Exception {
		List list=sqlSession.selectList(namespace+".boardListPage",cri);
		return list;
	}
	// board테이블의 전체 갯수: 페이징의 realEnd를 알기 위해서.
	@Override
	public int boardCount(Criteria cri) throws Exception {
		int cnt=sqlSession.selectOne(namespace+".boardCount",cri);
		return cnt;
	}
	
	//제목을 클릭했을 떄 상세 페이지
	@Override
	public Board2Vo boardDetail(int no) throws Exception{
		//selectOne은 select된 결과가 한 건 일 때 사용하는 메소드
		Board2Vo board2vo=sqlSession.selectOne(namespace+".boardDetail",no);
		return board2vo;
	}
	//게시판 글쓰기
	@Override
	public void boardWrite(Board2Vo board2) throws Exception {
		
	
		
		sqlSession.insert(namespace+".boardWrite",board2);
	}
	//게시판 글수정
	@Override
	public void boardModify(Board2Vo board2) {
		sqlSession.update(namespace+".boardModify",board2);
	}
	//게시판 글삭제
	@Override
	public void boardDel(Board2Vo board2) {
		sqlSession.delete(namespace+".boardDel",board2);
	}




	
	
}
