package com.kh.fooding.store.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.store.model.vo.Sam;

public interface StoreDao {

	ArrayList<Sam> searchResult(String searchKey, SqlSessionTemplate sqlSession);


}
