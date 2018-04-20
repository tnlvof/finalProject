package com.kh.fooding.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.fooding.store.model.service.StoreService;
import com.kh.fooding.store.model.vo.Store;

@Controller
@SessionAttributes("loginUser")
public class StoreController {
	@Autowired
	private StoreService ss;
	
	@RequestMapping(value="storeInfo.st")
	public String storeInfo(Store s, Model model) {
		
		ss.insertStoreInfo(s);
		
		
		return "main/main";
	}
	
}
