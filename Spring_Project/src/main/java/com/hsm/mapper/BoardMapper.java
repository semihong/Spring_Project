package com.hsm.mapper;

import java.util.List;

import com.hsm.model.BoardVo;
import com.hsm.model.Criteria;
public interface BoardMapper{ 
	//전체 목록 리스트 
	public List<BoardVo> boardList() throws Exception;
	//전체 목록 리스트( 페이징 처리)
	public List<BoardVo> boardListPaging(Criteria cri) throws Exception;
	
	// board테이블의 전체 갯수: 페이징의 realEnd를 알기 위해서.
	public int boardCount(Criteria cri) throws Exception; 
	
	//제목을 클릭했을 떄 상세 페이지
	public BoardVo boardDetail(int no) throws Exception;
	//게시판 글쓰기
	//public void boardWrite(String subject,String contents,String writer,int cnt); 
	public void boardWrite(BoardVo board)throws Exception;
	//게시판 글수정
	public void boardModify(BoardVo board)throws Exception;
	//게시판 글삭제
	public void boardDel(BoardVo board)throws Exception;
	//게시판 글쓰기 할때, 파일 업로드
	
	
}
