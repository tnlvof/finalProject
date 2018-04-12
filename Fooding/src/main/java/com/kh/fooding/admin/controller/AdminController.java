package com.kh.fooding.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.fooding.member.model.service.MemberService;
import com.kh.fooding.member.model.service.MemberServiceImpl;
import com.kh.fooding.member.model.vo.Member;

@Controller

public class AdminController {
	
	@Autowired
	private MemberService ms;
	

	// 멤버 리스트 보여주기
	@RequestMapping(value = "selectMemberList.adm", method = RequestMethod.POST)	
	public String selectMemberList() {
		
		ArrayList<Member> list = null;
		
		MemberService ms = new MemberServiceImpl();
		
		list = ms.selectMemberList();		
		System.out.println("list @adminCntr" + list);
		
		return "admin/adminMain";
	}
	

	// 멤버 수정 페이지로 전환
	@RequestMapping(value = "showEditForm.adm", method = RequestMethod.GET)	
	public String showEditForm() {
		return "admin/memberEdit";
	}
	
	
	
}
