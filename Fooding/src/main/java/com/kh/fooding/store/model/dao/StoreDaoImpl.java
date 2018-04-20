package com.kh.fooding.store.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.store.model.vo.Store;

@Repository
public class StoreDaoImpl implements StoreDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertStoreInfo(Store s, SqlSessionTemplate sqlSession) {
		System.out.println("storedao"+ s );
		return sqlSession.insert("Store.insertStore",s);
  }
    
	@Override
	public ArrayList<Sam> searchResult(String searchKey, SqlSessionTemplate sqlSession) {
		
		System.out.println("StoreDao key : " + searchKey);
		
		return null;

	}

}
