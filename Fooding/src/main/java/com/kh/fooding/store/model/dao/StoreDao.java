package com.kh.fooding.store.model.dao;


import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.store.model.vo.Store;
import com.kh.fooding.store.model.vo.StoreSam;
import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.Coupon;
import com.kh.fooding.store.model.vo.Sam;

import java.util.ArrayList;
import java.util.Map;

public interface StoreDao {

	int insertStoreInfo(Store s, SqlSessionTemplate sqlSession);


	ArrayList<StoreSam> searchResult(String searchKey, PageInfo pi, SqlSessionTemplate sqlSession);
	
	Sam selectOneSam(String restName, SqlSessionTemplate sqlSession);

	ArrayList<Store> selectAllStores(SqlSessionTemplate sqlSession);
 
	int getListCount(String searchKey, SqlSessionTemplate sqlSession);

	ArrayList<StoreSam> selectThemeList(SqlSessionTemplate sqlSession, String query);


	ArrayList<Store> searchStore(SqlSessionTemplate sqlSession, String searchKey, PageInfo pi);

	int getCouponCount(SqlSessionTemplate sqlSession, String sort);

	ArrayList<Coupon> selectCoupon(SqlSessionTemplate sqlSession, PageInfo pi, String sort);

	ArrayList<StoreSam> selectThemeListMenu(SqlSessionTemplate sqlSession, String query);

	ArrayList<StoreSam> selectThemeListSamCat(SqlSessionTemplate sqlSession, String query);


	ArrayList<StoreSam> selectThemeListStore(SqlSessionTemplate sqlSession, String query);

	Store selectOneStore(int sid, SqlSessionTemplate sqlSession);

	ArrayList<Store> searchStList(Map<String, String> data, String searchCon);



	int getSid(SqlSessionTemplate sqlSession, int mid);


	int insertCoupon(SqlSessionTemplate sqlSession, Coupon c, Member m);

	
	ArrayList<Coupon> selectCouponsList(SqlSessionTemplate sqlSession, Coupon c, Member m);


}
