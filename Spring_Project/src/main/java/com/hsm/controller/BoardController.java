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

import com.hsm.model.BoardVo;
import com.hsm.model.Criteria;
import com.hsm.model.PageVO;
import com.hsm.service.BoardService;
import com.hsm.service.ReplyService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService bservice;
	@Inject
	private ReplyService rservice;
	private static final Logger logger=
			LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value="list",method=RequestMethod.GET)
	public void listGet(Criteria cri,Model model) throws Exception{	
		int total=bservice.boardCount(cri);
		PageVO pv=new PageVO(cri,total);
		model.addAttribute("list", bservice.boardListPaging(cri));	
		model.addAttribute("page",pv);

	}
	
	/* */
	/*글쓰기를 위한 controller*/
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registGET() throws Exception{
		//logger.info("regist get....");
		return "board/write";
	}

	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registPOST(BoardVo board) throws Exception{
		logger.info("regist post...");

		
		logger.info("regist post...."+board.getSubject());
	//	logger.info("regist post..."+filename);
		bservice.boardWrite(board); //글쓰기 한 후,		
		return "redirect:list";
	//리다이렉트 방식 (컨트롤로 안에서)
	}
	
	@RequestMapping(value="detail",method=RequestMethod.GET) //a태그는 get방식
	public void detailGet(@RequestParam int no,Model model) throws Exception{
		//logger.info("detail get..."+no);

		model.addAttribute("detail", bservice.boardDetail(no));
		//위에 public String으로 바꾸고 return "board/detail" 과 같다. (리턴문)
			
	//리다이렉트 방식 (컨트롤로 안에서)
	}
	

	
	@RequestMapping(value="modify",method=RequestMethod.GET) //a태그는 get방식
	public void modifyGet(@RequestParam int no, Model model) throws Exception{
		//logger.info("modify get...");
		model.addAttribute("modify", bservice.boardDetail(no));
	}	
	
	@RequestMapping(value="modify",method=RequestMethod.POST) 
	public String modifyPost(BoardVo board) throws Exception{
		
		//logger.info("modify post...");
		
		bservice.boardModify(board);
		return "redirect:detail?no="+board.getNo();
	}	

	@RequestMapping(value="delete",method=RequestMethod.GET) //a태그는 get방식
	//public void deleteGet(@RequestParam int no) {
 //@requestParam: url 주소의 물음표 뒤에 있는 부분을 들고 오겠다	

	public String deleteGet(BoardVo board) throws Exception {
		//	logger.info("no"+board.getNo());
			bservice.boardDel(board);
			return "redirect:list";
	}
	
	@RequestMapping(value="replyboard", method=RequestMethod.GET)
	public void replyGET() throws Exception{
	//	logger.info("aaaaa");
	}


	
}
