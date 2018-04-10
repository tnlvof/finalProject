package com.kh.fooding.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.service.MemberService;
import com.kh.fooding.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public String loginCheck(Member m , HttpSession session, Model model,
			SessionStatus status) {

		System.out.println("controller Member : " + m);

		try { 
			Member loginUser = ms.loginMember(m);

			session.setAttribute("loginUser", loginUser);

			return "main/main";

		} catch (LoginException e) {
			model.addAttribute("message", e.getMessage());
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value = "goMemberJoin.me")
	public String goMemberJoin() {
		
		return "member/memberJoin";
	}
	
	@RequestMapping(value = "goStoreJoin.me")
	public String goStoreJoin() {
		
		return "member/storeJoin";
	}
	
	@RequestMapping(value ="memberJoin.me")
	public String memberJoin(Member m) {
		
		
		return "main/main";
	}
	
	
}
