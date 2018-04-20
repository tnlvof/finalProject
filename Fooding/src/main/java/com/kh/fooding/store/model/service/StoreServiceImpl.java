package com.kh.fooding.store.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.store.model.dao.StoreDao;
import com.kh.fooding.store.model.vo.Store;

@Service
public class StoreServiceImpl implements StoreService{
	@Autowired
	private StoreDao sd;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertStoreInfo(Store s) {
		int result = sd.insertStoreInfo(s, sqlSession);
	}

}
