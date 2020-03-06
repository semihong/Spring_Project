package com.hsm.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hsm.model.Board2Vo;
import com.hsm.model.Criteria;
import com.hsm.model.PageVO;
import com.hsm.service.Board2Service;
import com.hsm.service.ReplyService;

@Controller
@RequestMapping("/board2")
public class Board2Controller {
	
	@Autowired
	private Board2Service b2service;
	@Inject
	private ReplyService rservice;
	private static final Logger logger=
			LoggerFactory.getLogger(BoardController.class);
	
	
	
	
	
	@RequestMapping(value="list",method=RequestMethod.GET)
	public void listGet(Criteria cri,Model model) throws Exception{
		logger.info("cri"+cri);
		int total=b2service.boardCount(cri);
		logger.info("total"+total);
		
		PageVO pv=new PageVO(cri,total);
		//select 전체 목록을 Model 객체에 저장 후, list.jsp에 실어서 보낸다. 
		//logger.info("keyword="+cri.getKeyword());
		//logger.info("pv="+pv.getStartPage());
		//logger.info("total="+total);
		//logger.info("list="+ bservice.boardListPaging(cri));
		model.addAttribute("list", b2service.boardListPaging(cri));	
		model.addAttribute("page",pv);
		
	
	}
	
	/* */
	/*글쓰기를 위한 controller*/
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registGET() throws Exception{
		//logger.info("regist get....");
		return "board2/write";
	}

	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registPOST(Board2Vo board2) throws Exception{
		logger.info("regist post...");

		
		logger.info("regist post...."+board2.getSubject());
	//	logger.info("regist post..."+filename);
		b2service.boardWrite(board2); //글쓰기 한 후,		
		return "redirect:list";
	//리다이렉트 방식 (컨트롤로 안에서)
	}
	
	@RequestMapping(value="detail",method=RequestMethod.GET) //a태그는 get방식
	public void detailGet(@RequestParam int no,Model model) throws Exception{
		//logger.info("detail get..."+no);

		model.addAttribute("detail", b2service.boardDetail(no));
		//위에 public String으로 바꾸고 return "board/detail" 과 같다. (리턴문)
			
	//리다이렉트 방식 (컨트롤로 안에서)
	}
	

	
	@RequestMapping(value="modify",method=RequestMethod.GET) //a태그는 get방식
	public void modifyGet(@RequestParam int no, Model model) throws Exception{
		//logger.info("modify get...");
		model.addAttribute("modify", b2service.boardDetail(no));
	}	
	
	@RequestMapping(value="modify",method=RequestMethod.POST) 
	public String modifyPost(Board2Vo board2) throws Exception{
		
		//logger.info("modify post...");
		
		b2service.boardModify(board2);
		return "redirect:detail?no="+board2.getNo();
	}	

	@RequestMapping(value="delete",method=RequestMethod.GET) //a태그는 get방식
	//public void deleteGet(@RequestParam int no) {
 //@requestParam: url 주소의 물음표 뒤에 있는 부분을 들고 오겠다	

	public String deleteGet(Board2Vo board2) throws Exception {
		//	logger.info("no"+board.getNo());
		b2service.boardDel(board2);
			return "redirect:list";
	}
	
	@RequestMapping(value="replyboard", method=RequestMethod.GET)
	public void replyGET() throws Exception{
	//	logger.info("aaaaa");
	}


	
}

