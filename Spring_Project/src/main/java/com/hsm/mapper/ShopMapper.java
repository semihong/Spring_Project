package com.hsm.mapper;

import java.util.List;

import com.hsm.model.CartVO;

public interface ShopMapper {
	
	public void addCart(CartVO cart)throws Exception;
	
	public List<CartVO> cartList(String id) throws Exception;

	public void cartDel(int rno)throws Exception;


	
}
