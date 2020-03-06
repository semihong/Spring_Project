package com.hsm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.hsm.model.Criteria;
import com.hsm.model.PageVO;
import com.hsm.model.ReplyVO;
import com.hsm.service.ReplyService;

@RestController
@RequestMapping("/replies")
public class ReplyController {
	
	@Autowired
	private ReplyService rservice;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReplyVO vo) {
		
		ResponseEntity<String> entity = null;
		
		try {
			rservice.RepWrite(vo);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(value="/all/{bno}",method=RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> list(@PathVariable("bno") int bno){
		ResponseEntity<List<ReplyVO>>entity = null;
		try {
			entity= new ResponseEntity<List<ReplyVO>>(rservice.replylist(bno),HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<ReplyVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(value="/{bno}/{page}",method=RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> listPage(@PathVariable("bno") int bno,	
											@PathVariable("page")  int page){
		ResponseEntity<Map<String,Object>>entity = null;
		try {
			Criteria cri=new Criteria(); //페이징에 필요한 페이지번호와, 한페이지당 리스트 갯수.
			cri.setPageNum(page);
			int cnt=rservice.count(bno);
			PageVO pv= new PageVO(cri,cnt);
			
			Map<String, Object> map = new HashMap<String,Object>();
			List<ReplyVO> list=rservice.Replylist(bno,cri);
			
			map.put("list", list); //게시판리스트
			map.put("page", page); //페이징관련.
			
			entity = new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
			System.out.println("entity==>"+entity);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(value="/{rno}",method= {RequestMethod.PUT,RequestMethod.PATCH})
	public ResponseEntity<String> update(@PathVariable("rno") int rno,
										@RequestBody ReplyVO vo){
		ResponseEntity<String>entity=null;
		try {
			vo.setRno(rno);
			rservice.RepModify(vo);
			entity=new ResponseEntity<String> ("SUCCESS",HttpStatus.OK);
			
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
	return entity;	
	}
	@RequestMapping(value="/{rno}",method=RequestMethod.DELETE)
	public ResponseEntity<String> delete(@PathVariable("rno") int rno){
		ResponseEntity<String>entity = null;
		try {
			rservice.RepDel(rno);
			entity= new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);

		}
		return entity;
	}
	}
	
	

