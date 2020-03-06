package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.mapper.ReplyMapper;
import com.hsm.model.Criteria;
import com.hsm.model.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	private ReplyMapper rm;
	@Override
	public List<ReplyVO> replylist(int bno) throws Exception {
		return rm.replylist(bno);
	}
	@Override
	public void RepWrite(ReplyVO vo) throws Exception {
		rm.RepWrite(vo);
	}
	//수정
	@Override
	public void RepModify(ReplyVO vo) throws Exception {
		rm.RepModify(vo);
		
	}
	//삭제
	@Override
	public void RepDel(int rno) throws Exception {
		rm.RepDel(rno);
	}
	
	@Override
	public List<ReplyVO> Replylist(int bno, Criteria cri) throws Exception {
		return rm.Replylist(bno, cri);
	}
	@Override
	public int count(int bno) throws Exception {
		return rm.count(bno);
	}
	
}
