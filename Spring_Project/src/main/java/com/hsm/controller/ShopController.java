
package com.hsm.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hsm.model.CartVO;
import com.hsm.model.MemberVO;
import com.hsm.service.ShopService;

@Controller
@RequestMapping
public class ShopController {
	@Autowired
	private ShopService sService;
	private static final Logger logger=
			LoggerFactory.getLogger(BoardController.class);

	@ResponseBody
	@RequestMapping(value="cart",method=RequestMethod.POST)
	public int registPOST(@RequestBody CartVO cart,MemberVO member,
			HttpServletResponse response,HttpSession session) throws Exception{
		
		int result=0;
		member=(MemberVO)session.getAttribute("member");
		if(member!= null) {
			cart.setId(member.getId());
			sService.addCart(cart);
			result=1;
		}
		return result;
	}
	//리스트		
	@RequestMapping(value="cartList",method=RequestMethod.GET)
	public void getCartList(@RequestParam String id,Model model, CartVO cart) throws Exception{
		model.addAttribute("cartList",sService.cartList(id));
	}

//delete
	
	@RequestMapping(value="delete",method=RequestMethod.POST) //a태그는 get방식
	//@requestParam: url 주소의 물음표 뒤에 있는 부분을 들고 오겠다	
	public String deletePost(CartVO cart,@RequestParam int rno) throws Exception {
			sService.cartDel(rno);
			System.out.println("delete aaaa");
			return "redirect:cartList?id="+cart.getId();
				}	
}
//보드 컨트롤러에 write 부분과 동일***
//따라서 매퍼, 서피스에 write추가
	