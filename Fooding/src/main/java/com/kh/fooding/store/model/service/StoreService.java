package com.kh.fooding.store.model.service;

import java.util.ArrayList;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.store.model.vo.Coupon;
import com.kh.fooding.store.model.vo.Sam;
import com.kh.fooding.store.model.vo.Store;
import com.kh.fooding.store.model.vo.StoreSam;

public interface StoreService {
	void insertStoreInfo(Store s);

	ArrayList<StoreSam> searchResult(PageInfo pi, String searchKey);

	int getListCount(String searchKey);
	
	Sam selectOneSam(String restName);

	ArrayList<Store> selectAllStores();

	ArrayList<StoreSam> selectThemeList(String query);


	ArrayList<Store> searchStore(PageInfo pi, String searchKey);

	int getBestCouponCount();
	

	ArrayList<Coupon> selectBestCoupon();

	//sam 테이블에서 메뉴별로 가져오기
	ArrayList<StoreSam> selectThemeListMenu(String query);

	//sam 테이블에서 업종 별로 가져오기
	ArrayList<StoreSam> selectThemeListSamCat(String query);
	//store 테이블에서 메뉴별로 가져오기
	ArrayList<StoreSam> selectThemeListMenuStore(String query);



	Store selectOneStore(int sid);



}
