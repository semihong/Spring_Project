package com.hsm.mapper;

import java.util.List;

import com.hsm.model.Board2Vo;
import com.hsm.model.Criteria;
public interface Board2Mapper{ 
	//전체 목록 리스트 
	public List<Board2Vo> boardList() throws Exception;
	//전체 목록 리스트( 페이징 처리)
	public List<Board2Vo> boardListPaging(Criteria cri) throws Exception;
	
	// board테이블의 전체 갯수: 페이징의 realEnd를 알기 위해서.
	public int boardCount(Criteria cri) throws Exception; 
	
	//제목을 클릭했을 떄 상세 페이지
	public Board2Vo boardDetail(int no) throws Exception;
	//게시판 글쓰기
	//public void boardWrite(String subject,String contents,String writer,int cnt); 
	public void boardWrite(Board2Vo board2)throws Exception;
	//게시판 글수정
	public void boardModify(Board2Vo board2)throws Exception;
	//게시판 글삭제
	public void boardDel(Board2Vo board2)throws Exception;
	//게시판 글쓰기 할때, 파일 업로드
	
	
}
