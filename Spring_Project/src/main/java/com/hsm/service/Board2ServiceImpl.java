package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hsm.mapper.Board2Mapper;
import com.hsm.model.Board2Vo;
import com.hsm.model.Criteria;

@Service
public class Board2ServiceImpl implements Board2Service {

	//Dao d= new Dao();역할 -> @Autowired
	@Autowired
	Board2Mapper bm2;
	
	//게시판 리스트 (BoardMapper.java에 대한 서비스)
	@Override
	public List<Board2Vo> boardList() throws Exception {
		return bm2.boardList();
	}
	//게시판 리스트 -페이징
	@Override
	public List<Board2Vo> boardListPaging(Criteria cri) throws Exception {
		return bm2.boardListPaging(cri);
	}
	// board테이블의 전체 갯수: 페이징의 realEnd를 알기 위해서.
	@Override
	public int boardCount(Criteria cri) throws Exception {
		return bm2.boardCount(cri);
	}
	
	//게시판 제목을 클릭했을때
	@Override
	public Board2Vo boardDetail(int no) throws Exception {
		return bm2.boardDetail(no);
	}
	//게시판 글수정
	@Override
	public void boardModify(Board2Vo board2) throws Exception {
		bm2.boardModify(board2);
		
	}
	//게시판 글삭제
	@Override
	public void boardDel(Board2Vo board2) throws Exception {
		bm2.boardDel(board2);
	}
	
	////게시판 글쓰기 할때, 파일 업로드
	@Transactional
	@Override
	public void boardWrite(Board2Vo board2) throws Exception {
		bm2.boardWrite(board2);
		//String[] files= board.getFiles();
		//if(files==null ) {return;}
		//for(String fileName : files) {
		}
	
	}


	

