package com.kh.fooding.store.model.service;

import java.util.ArrayList;

import com.kh.fooding.store.model.vo.Sam;

public interface StoreService {

	ArrayList<Sam> searchResult(String searchKey);

}
