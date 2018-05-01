package com.kh.fooding.store.model.service;


import com.kh.fooding.store.model.vo.Store;

import java.util.ArrayList;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.store.model.vo.Coupon;
import com.kh.fooding.store.model.vo.Sam;

public interface StoreService {
	void insertStoreInfo(Store s);

	ArrayList<Sam> searchResult(PageInfo pi, String searchKey);

	int getListCount(String searchKey);
	
	Sam selectOneSam(String restName);

	ArrayList<Store> selectAllStores();

	ArrayList<Store> selectThemeList(String query);


	ArrayList<Store> searchStore(PageInfo pi, String searchKey);


	ArrayList<Coupon> selectBestCoupon();

	//sam 테이블에서 메뉴 별로 가져오기
	ArrayList<Sam> selectThemeListMenu(String query);

	//sam 테이블에서 업종 별로 가져오기
	ArrayList<Sam> selectThemeListSamCat(String query);



}
