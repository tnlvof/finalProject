package com.kh.fooding.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fooding.board.model.service.BoardService;

@Controller
public class BoardController {
	

	
	@RequestMapping(value="selectOne.bo")
	public String selectOneBoard(HttpServletRequest request) {
		String bid = request.getParameter("bid");
		System.out.println(bid);
		
		
		return "admin/qnaDetail"; 
	}

}
