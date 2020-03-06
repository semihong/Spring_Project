package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.mapper.ShopMapper;
import com.hsm.model.CartVO;

@Service
public class ShopServiceImpl implements ShopService{
	@Autowired
	ShopMapper sm;
	
	@Override
	public void addCart(CartVO cart) throws Exception {
	sm.addCart(cart);
	}

	@Override
	public List<CartVO> cartList(String id) throws Exception {
		System.out.println("service = "+sm.cartList(id));
		return sm.cartList(id);

	}

	@Override
	public void cartDel(int rno) throws Exception {
		sm.cartDel(rno);
		
	}


}
