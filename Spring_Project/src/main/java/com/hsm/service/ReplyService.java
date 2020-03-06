package com.hsm.service;

import java.util.List;

import com.hsm.model.Criteria;
import com.hsm.model.ReplyVO;

public interface ReplyService {
	//댓글조회
	public List<ReplyVO> replylist (int bno) throws Exception;
	//댓글쓰기
	public void RepWrite(ReplyVO vo) throws Exception;
	//댓글수정
	public void RepModify(ReplyVO vo) throws Exception;
	//댓글삭제
		public void RepDel(int rno) throws Exception;
		//댓글조회(페이징 처리)
		public List<ReplyVO> Replylist(int bno,Criteria cri) throws Exception;
		//각 게시물의 댓글 전체 개수 
		public int count(int bno)throws Exception;
	
}