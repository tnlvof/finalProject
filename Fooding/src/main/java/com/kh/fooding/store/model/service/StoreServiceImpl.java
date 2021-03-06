package com.kh.fooding.store.model.service;


import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.common.PageInfo;

import com.kh.fooding.member.model.vo.Member;

import com.kh.fooding.reservation.model.vo.Reservation;

import com.kh.fooding.store.model.dao.StoreDao;


import com.kh.fooding.store.model.vo.Store;
import com.kh.fooding.store.model.vo.StoreSam;

import com.kh.fooding.store.model.vo.Coupon;
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
	public ArrayList<StoreSam> searchResult(PageInfo pi,String searchKey) {
		
		ArrayList<StoreSam> sam = sd.searchResult(searchKey,pi,sqlSession); 
		
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


	// 업체 조회 admin
	@Override
	public ArrayList<Store> selectAllStores() {
		ArrayList<Store> storeList = sd.selectAllStores(sqlSession);
		
		return storeList;

	}

	
	//테마 레스토랑 조회 - 카테고리별
	@Override
	public ArrayList<StoreSam> selectThemeList(String query) {
		ArrayList<StoreSam> themeList = sd.selectThemeList(sqlSession, query);
		
		return themeList;
	}


	//검색 결과
	@Override
	public ArrayList<Store> searchStore(PageInfo pi, String searchKey) {
		ArrayList<Store> store = sd.searchStore(sqlSession, searchKey,pi);
		return store;
	}

	//테마 레스토랑 조회 - 메뉴별
	@Override
	public ArrayList<StoreSam> selectThemeListMenu(String query) {
		ArrayList<StoreSam> selectThemeListMenu = sd.selectThemeListMenu(sqlSession, query);
		
		return selectThemeListMenu;
	}

	// 테마 레스토랑 조회 - 카테고리별
	@Override
	public ArrayList<StoreSam> selectThemeListSamCat(String query) {
		ArrayList<StoreSam> selectThemeListSamCat = sd.selectThemeListSamCat(sqlSession, query );
		
		return selectThemeListSamCat;
	}

	//추천 쿠폰 수 
	@Override
	public int getCouponCount(String sort) {
		int result = sd.getCouponCount(sqlSession, sort);
		
		return result;
	}


	//추천 쿠폰 조회
	@Override
	public ArrayList<Coupon> selectCoupon(PageInfo pi, String sort) {
		ArrayList<Coupon> couponList = sd.selectCoupon(sqlSession, pi, sort);
		
		System.out.println("service couponList : " + couponList);
		
		return couponList;
	}


	//테마 레스토랑 메뉴 검색 (store)	
	@Override
	public ArrayList<StoreSam> selectThemeListMenuStore(String query) {
		
		ArrayList<StoreSam> themeList2 = sd.selectThemeListStore(sqlSession, query);
		return themeList2;
	}

	@Override
	public Store selectOneStore(int sid) {
		return sd.selectOneStore(sid, sqlSession);
	}

	@Override

	public int getSid(int mid) {
		int result = sd.getSid(sqlSession, mid);
		return result;
	}

	@Override
	public int insertCoupon(Coupon c, Member m) {
		return sd.insertCoupon(sqlSession, c,m);
	}

	@Override
	public ArrayList<Coupon> selectCouponsList(Coupon c, Member m) {
		ArrayList<Coupon> couponList = sd.selectCouponsList(sqlSession, c, m);
		return couponList;
	}

	public ArrayList<Store> searchStList(Map<String, String> data, String searchCon) {
		ArrayList<Store> searchStList = sd.searchStList(data, searchCon);
		return searchStList;
	}

	

}
