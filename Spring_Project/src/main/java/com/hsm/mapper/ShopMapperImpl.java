package com.hsm.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hsm.model.CartVO;
@Repository
public class ShopMapperImpl implements ShopMapper {
	
	@Autowired
	private SqlSession sqlSession;
	private static final String namespace="com.hsm.mapper.ShopMapper";
	
	
	@Override
	public void addCart(CartVO cart) throws Exception {
			sqlSession.insert(namespace+".addCart",cart);
	}


	@Override
	public List<CartVO> cartList(String id) throws Exception {
		List list=sqlSession.selectList(namespace+".cartList", id);
		System.out.println("Mapper = "+list);
		return list;	}


	@Override
	public void cartDel(int rno) throws Exception {
		sqlSession.delete(namespace+".cartDel",rno);

	}



}
