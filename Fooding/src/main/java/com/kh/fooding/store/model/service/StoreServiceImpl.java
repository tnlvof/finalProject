package com.kh.fooding.store.model.service;


import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.store.model.dao.StoreDao;

import com.kh.fooding.store.model.vo.Store;

import com.kh.fooding.store.model.vo.Sam;


@Service
public class StoreServiceImpl implements StoreService{
	@Autowired
	private StoreDao sd;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override 
	public void insertStoreInfo(Store s) {
		sd.insertStoreInfo(s, sqlSession);
		
		System.out.println("gdgdgd");
		
	}

	@Override
	public ArrayList<Sam> searchResult(PageInfo pi,String searchKey) {
		
		ArrayList<Sam> sam = sd.searchResult(searchKey,pi,sqlSession); 
		
		return sam;
	}

	@Override
	public int getListCount(String searchKey) {
		
		int result = sd.getListCount(searchKey,sqlSession);
		
		return result;
	}
	
	@Override
	public Sam selectOneSam(String restName) {
		
		Sam s = sd.selectOneSam(restName,sqlSession);
		
		return s;
	}

}
