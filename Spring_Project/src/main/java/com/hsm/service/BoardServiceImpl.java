package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.mapper.BoardMapper;
import com.hsm.model.BoardVo;
import com.hsm.model.Criteria;

@Service
public class BoardServiceImpl implements BoardService {

	//Dao d= new Dao();역할 -> @Autowired
	@Autowired
	BoardMapper bm;
	
	//게시판 리스트 (BoardMapper.java에 대한 서비스)
	@Override
	public List<BoardVo> boardList() throws Exception {
		return bm.boardList();
	}
	//게시판 리스트 -페이징
	@Override
	public List<BoardVo> boardListPaging(Criteria cri) throws Exception {
		return bm.boardListPaging(cri);
	}
	// board테이블의 전체 갯수: 페이징의 realEnd를 알기 위해서.
	@Override
	public int boardCount(Criteria cri) throws Exception {
		return bm.boardCount(cri);
	}
	
	//게시판 제목을 클릭했을때
	@Override
	public BoardVo boardDetail(int no) throws Exception {
		return bm.boardDetail(no);
	}
	//게시판 글쓰기 할때
	@Override
	public void boardWrite(BoardVo board) throws Exception {
		bm.boardWrite(board);
		}

	//게시판 글수정
	@Override
	public void boardModify(BoardVo board) throws Exception {
		bm.boardModify(board);
		
	}
	//게시판 글삭제
	@Override
	public void boardDel(BoardVo board) throws Exception {
		bm.boardDel(board);
	}
	
	
	
	}


	

