package com.kh.fooding.store.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.store.model.dao.StoreDao;
import com.kh.fooding.store.model.vo.Sam;

@Service
public class StoreServiceImpl implements StoreService{
	@Autowired
	private StoreDao st;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Sam> searchResult(String searchKey) {
		
		ArrayList<Sam> sam = st.searchResult(searchKey,sqlSession); 
		
		return sam;
	}


}
