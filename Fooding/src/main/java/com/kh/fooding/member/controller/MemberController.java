package com.kh.fooding.member.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.service.MemberService;
import com.kh.fooding.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//로그인
	@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public String loginCheck(Member m , HttpSession session, Model model) {

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
	
	//로그인
	/*@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public ModelAndView loginCheck(Member m,Model model, ModelAndView mv, SessionStatus status) {

		System.out.println("controller Member : " + m);

		try {
			Member loginUser = ms.loginMember(m);

			mv.addObject("loginUser", loginUser);
			model.addAttribute("loginUser",loginUser);
			status.setComplete();
			
			mv.setViewName("main/main");

		} catch (LoginException e) {
			String loginFail = "로그인에 실패하였습니다.";
			mv.addObject("loginFail", loginFail);
			mv.setViewName("main/main");
		}
		return mv;
	}*/
	
	
	@RequestMapping(value = "goMemberJoin.me")
	public String goMemberJoin() {
		
		return "member/memberJoin";
	}
	
	@RequestMapping(value = "goStoreJoin.me")
	public String goStoreJoin() {
		
		return "member/storeJoin";
	}
	 
	@RequestMapping(value ="memberJoin.me")
	public String memberJoin(Member m, Model model) {
		
		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
		
		String[] birthArr = m.getBirth().split(",");
		String birth = birthArr[0] + "년 " + birthArr[1] + "월 " + birthArr[2] + "일"; 
		m.setBirth(birth);
		
		System.out.println("controller m : " + m );
		
		ms.insertMember(m);
		
		return "main/main";
	}
	
	@RequestMapping(value = "logout.me", method = RequestMethod.GET)
	public String logout(HttpSession session/*,SessionStatus status*/) {
		
		session.invalidate();
		
//		status.setComplete();
		
		return "main/main";
	}
	
	@RequestMapping(value ="goMain.me")
	public String goMain() {
		
		return "main/main";
	}

	
	//멤버 리스트 불러오기 
	
		@RequestMapping(value = "selectMemberList.me", method = RequestMethod.POST)	
		public ModelAndView selectMemberList(ModelAndView mv) {
						
			//System.out.println("멤버 컨트롤러");		
				
				try {
					ArrayList<Member> memberlist = ms.selectMemberList();
					System.out.println("memberlist @controller " + memberlist);
					
					mv.addObject("memberlist", memberlist);
					mv.setViewName("jsonView");			
					
				} catch (selectMemberException e) {
					mv.addObject("message", e.getMessage());
					mv.setViewName("common/errorPage");				
				}			
				
				
				return mv;				
				
			}
	

	// 멤버 수정 페이지로 전환
	@RequestMapping(value = "showEditForm.me", method = RequestMethod.POST)			
	public ModelAndView showEditForm(ModelAndView mv, @RequestParam("editMid") ArrayList<String> midlist) {
		/*System.out.println("수정페이지");
		System.out.println("midlist : "+midlist);*/
		
		ArrayList<Member> editList = ms.selectEditList(midlist); 
		
		//System.out.println("editList @ Controller : " + editList);
		mv.addObject("editList", editList);
		mv.setViewName("admin/memberEdit" );
	
		return mv;
	}
	
	// 멤버 정보 수정하기
	@RequestMapping(value = "updateMembers.me", method = RequestMethod.POST)
	@ResponseBody
	public void updateMembers(@RequestBody Map<String, Object> data ) {
		System.out.println("온다");
		System.out.println("미드 : " + data);
			
		ArrayList<String> midArr = (ArrayList<String>) data.get("midArr");
		ArrayList<String> repCountArr = (ArrayList<String>) data.get("repCountArr");
		ArrayList<String> statusArr = (ArrayList<String>) data.get("statusArr");
		
		System.out.println(midArr);
		System.out.println(repCountArr);
		System.out.println(statusArr);
		
	
		int result = ms.updateMembers(midArr);
		
	}
	
	//멤버 검색
	@RequestMapping(value = "searchMembers.me", method = RequestMethod.POST)
	public ModelAndView searchMembers(ModelAndView mv, @RequestBody Map<String, String> data) {
		System.out.println("넘어옴?");
		System.out.println(data);
		
		String searchCon = data.get("key");
				
		ArrayList<Member> searchList = ms.searchMember(searchCon, data);
		
		mv.addObject(searchList);
		
		return mv;
	}
	
	
	
	
		
	@RequestMapping(value ="goMyPage.me")
	public String goMyPage() {
		
		return "myPage/myPage";
	}
	
	@RequestMapping(value ="goMyPageReview.me")
	public String goMyPageReview() {
		
		return "myPage/myPageReview";
	}
	
	@RequestMapping(value ="goMyPageQuestions.me")
	public String goMyPageQuestions() {
		
		return "myPage/myPageQuestions";
	}
	
	@RequestMapping(value ="goMyPageQuestionForm.me")
	public String goMyPageQuestionForm() {
		
		return "myPage/myPageQuestionForm";
	}
	
}
