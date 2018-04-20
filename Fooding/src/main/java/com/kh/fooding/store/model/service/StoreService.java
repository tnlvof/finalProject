package com.kh.fooding.store.model.service;


import com.kh.fooding.store.model.vo.Store;

import java.util.ArrayList;

import com.kh.fooding.store.model.vo.Sam;

public interface StoreService {
	void insertStoreInfo(Store s);

	ArrayList<Sam> searchResult(String searchKey);
}
