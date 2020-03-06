package com.hsm.service;

import java.util.List;

import com.hsm.model.Board2Vo;
import com.hsm.model.Criteria;

public interface Board2Service {
	//게시판 리스트 (BoardMapper.java에 대한 서비스)

public List<Board2Vo> boardList() throws Exception; 
//게시판 리스트 -페이징
public List<Board2Vo> boardListPaging(Criteria cri) throws Exception; 
//게시판 제목을 클릭했을때

public Board2Vo boardDetail(int no) throws Exception;
	
// board테이블의 전체 갯수: 페이징의 realEnd를 알기 위해서.
public int boardCount(Criteria cri) throws Exception;
	//게시판 글수정
public void boardModify(Board2Vo board2)throws Exception;

	//게시판 글삭제
public void boardDel(Board2Vo board2)throws Exception;

	//게시판 글쓰기
public void boardWrite(Board2Vo board2)throws Exception;





}