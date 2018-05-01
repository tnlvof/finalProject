package com.kh.fooding.store.model.dao;


import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.store.model.vo.Store;
import com.kh.fooding.common.PageInfo;
import com.kh.fooding.store.model.vo.Sam;

import java.util.ArrayList;

public interface StoreDao {

	int insertStoreInfo(Store s, SqlSessionTemplate sqlSession);

	ArrayList searchResult(String searchKey, PageInfo pi, SqlSessionTemplate sqlSession);


	
	Sam selectOneSam(String restName, SqlSessionTemplate sqlSession);

	ArrayList<Store> selectAllStores(SqlSessionTemplate sqlSession);


	int getCouponListCount(SqlSessionTemplate sqlSession);

	int getListCount(String searchKey, SqlSessionTemplate sqlSession);

	ArrayList<Store> selectThemeList(SqlSessionTemplate sqlSession, String query);

	ArrayList<Sam> selectThemeListMenu(SqlSessionTemplate sqlSession, String query);

	ArrayList<Sam> selectThemeListSamCat(SqlSessionTemplate sqlSession, String query);

	

}
