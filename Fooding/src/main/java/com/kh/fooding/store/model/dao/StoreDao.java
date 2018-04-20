package com.kh.fooding.store.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.store.model.vo.Store;

public interface StoreDao {

	int insertStoreInfo(Store s, SqlSessionTemplate sqlSession);
}
