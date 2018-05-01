package com.kh.fooding.store.model.service;


import com.kh.fooding.store.model.vo.Store;

import java.util.ArrayList;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.store.model.vo.Sam;

public interface StoreService {
	void insertStoreInfo(Store s);

	ArrayList<Sam> searchResult(PageInfo pi, String searchKey);

	int getListCount(String searchKey);
	
	Sam selectOneSam(String restName);


	//int getCouponListCount();

	ArrayList<Store> selectAllStores();

	ArrayList<Store> selectThemeList(String query);

	ArrayList<Store> searchStore(PageInfo pi, String searchKey);

}
