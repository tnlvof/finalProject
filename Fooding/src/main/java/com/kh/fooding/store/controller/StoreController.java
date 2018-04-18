package com.kh.fooding.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {
/*	@Autowired
	private StoreService ss;*/
	
	@RequestMapping(value = "searchResult.st")
	public String searchResult() {
		
		return "store/searchList";
	}
	
}
