package com.kh.fooding.store.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kh.fooding.store.model.vo.Sam;

@Repository
public class StoreDaoImpl implements StoreDao{

	@Override
	public ArrayList<Sam> searchResult(String searchKey, SqlSessionTemplate sqlSession) {
		
		System.out.println("StoreDao key : " + searchKey);
		
		return null;
	}

}
