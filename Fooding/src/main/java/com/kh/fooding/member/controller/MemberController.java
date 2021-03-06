package com.kh.fooding.member.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.service.MemberService;
import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.review.model.vo.Review;
import com.kh.fooding.store.model.vo.Store;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	  private JavaMailSender mailSender;
	

	// 로그인
	@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public String loginCheck(Member m, HttpSession session, Model model) {

		System.out.println("controller Member : " + m);

		try {
			Member loginUser = ms.loginMember(m);
			
			System.out.println("loginUser : " + loginUser);
			session.setAttribute("loginUser", loginUser);
			session.removeAttribute("loginFail");

			if(loginUser.getUserId().equals("administrator")) {
				return "admin/adminMain";
			} else {
				return "main/main";
			}
			
			

		} catch (LoginException e) {
			String loginFail = "로그인에 실패하였습니다.";
			session.setAttribute("loginFail", loginFail);
			return "main/main";
		}
	}

	// 로그인
	/*
	 * @RequestMapping(value = "login.me", method = RequestMethod.POST) public
	 * ModelAndView loginCheck(Member m,Model model, ModelAndView mv, SessionStatus
	 * status) {
	 * 
	 * System.out.println("controller Member : " + m);
	 * 
	 * try { Member loginUser = ms.loginMember(m);
	 * 
	 * mv.addObject("loginUser", loginUser);
	 * model.addAttribute("loginUser",loginUser); status.setComplete();
	 * 
	 * mv.setViewName("main/main");
	 * 
	 * } catch (LoginException e) { String loginFail = "로그인에 실패하였습니다.";
	 * mv.addObject("loginFail", loginFail); mv.setViewName("main/main"); } return
	 * mv; }
	 */

	//비밀번호 재설정 페이지 이동	
	@RequestMapping(value="goResetPwd.me")
	public String goResetPwd() {
		return "member/findPwd";
	}
	//아이디 찾기 페이지 이동
	@RequestMapping(value="goFindId.me")
	public String goFindId() {
		return "member/findId";
	}
	@RequestMapping(value="findId.me")
	@ResponseBody 
	public ModelAndView findId(ModelAndView mv, @RequestBody Map<String, String> data) {
		
		Member findUser = ms.findId(data);
		String msg = ""; 
		
		if(findUser != null && data.get("email").equals(findUser.getEmail())) {
			msg = "회원님의 아이디는 "+findUser.getUserId()+"입니다.";
		}else {
			msg ="일치하는 회원이 없습니다.";
		}
		mv.addObject("msg", msg);
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping(value="goFindUserId.me")
	public String goFindUserId() {
		return "member/findId";
	}
	
	@RequestMapping(value="resetPwd.me")
	@ResponseBody
	public ModelAndView resetPwd(ModelAndView mv, @RequestBody Map<String, String> data ) {
		
		
		//이메일 확인
		Member checkUser = ms.checkUser(data);
		
		String msg ="";
		
		
		//이메일 확인해서 맞으면 새로 지정해서 메일 보내기
		if(checkUser != null && data.get("email").equals(checkUser.getEmail())) {
			        
		    String tomail  = checkUser.getEmail();     // 받는 사람 이메일
		    String title   = "변경된 패스워드입니다.";      // 제목
		    StringBuffer buffer=new StringBuffer();
			for(int i=0;i<=4;i++){
				int num=(int)(Math.random()*9+1);
				buffer.append(num);
			}
			String password = buffer.toString();
		    
		    String content = "변경된 패스워드는 "+password+"입니다.";    // 내용
		   
		    try {
		      MimeMessage message = mailSender.createMimeMessage();
		      MimeMessageHelper messageHelper 
		                        = new MimeMessageHelper(message, true, "UTF-8");
		 
		      messageHelper.setFrom("ctradm119@gmail.com");  // 보내는사람 생략하거나 하면 정상작동을 안함
		      messageHelper.setTo(tomail);     // 받는사람 이메일
		      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
		      messageHelper.setText(content);  // 메일 내용
		     
		      mailSender.send(message);
		      
		      //변경된 비밀번호로 수정하기 
		      password = passwordEncoder.encode(password);
		      
		      int result = ms.resetPwd(password, checkUser);

		      
		      if(result>0) {
		    	  msg = "비밀번호가 재설정되었습니다. 메일을 확인하고 다시 비밀번호를 바꿔주세요.";
		      }
		      

		    } catch(Exception e){
		      System.out.println(e);
		    }
		
		} else {
			//아니면 없다고 하기


			msg = "해당하는 회원 정보가 없습니다.";

		}

		mv.addObject("msg", msg);
		mv.setViewName("jsonView");
		

		
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping(value = "goMemberJoin.me")
	public String goMemberJoin() {

		return "member/memberJoin";
	}

	@RequestMapping(value = "goStoreJoin.me")
	public String goStoreJoin() {

		return "member/storeJoin";
	}

	@RequestMapping(value = "memberJoin.me")
	public String memberJoin(Member m, Model model) {

		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));

		String[] birthArr = m.getBirth().split(",");
		String birth = birthArr[0] + "년 " + birthArr[1] + "월 " + birthArr[2] + "일";
		m.setBirth(birth);

		System.out.println("controller m : " + m);

		ms.insertMember(m);

		return "main/main";
	}
	
	//업체회원가입
	@RequestMapping(value = "storeJoin.me")
	public String storeJoin(Member m, Model model) {
		
		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
		
		ms.insertStore(m);
		
		return "main/main";
	}

	@RequestMapping(value = "logout.me", method = RequestMethod.GET)
	public String logout(HttpSession session/* ,SessionStatus status */) {

		session.invalidate();

		// status.setComplete();

		return "main/main";
	}

	// 아이디 중복확인
	@ResponseBody
	@RequestMapping(value = "idCheck.me", method = RequestMethod.POST)
	public void idCheck(@RequestParam("checkId") String checkId, HttpServletResponse response) {

		System.out.println("controller checkId : " + checkId);

		int result = ms.idCheck(checkId);

		try {
			if (result > 0) {
				response.getWriter().println("true");
			}else {
				response.getWriter().println("false");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping(value = "goMain.me")
	public String goMain() {

		return "main/main";
	}

	// 멤버 리스트 불러오기
	@RequestMapping(value = "selectMemberList.me", method = RequestMethod.POST)
	public ModelAndView selectMemberList(ModelAndView mv) {

		// System.out.println("멤버 컨트롤러");

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
		/*
		 * System.out.println("수정페이지"); System.out.println("midlist : "+midlist);
		 */
		
		ArrayList<Member> editList = ms.selectEditList(midlist);

		// System.out.println("editList @ Controller : " + editList);
		mv.addObject("editList", editList);
		mv.setViewName("admin/memberEdit");

		return mv;
	}

	// 멤버 정보 수정하기
	@RequestMapping(value = "updateMembers.me", method = RequestMethod.POST)
	@ResponseBody
	public void updateMembers(@RequestBody Map<String, Object> data) {
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

	// 멤버 검색
	@RequestMapping(value = "searchMembers.me", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView searchMembers(ModelAndView mv, @RequestBody Map<String, String> data) {

		String searchCon = data.get("key");

		ArrayList<Member> searchList = ms.searchMember(searchCon, data);
		
		mv.addObject("searchList", searchList);
		mv.setViewName("jsonView");	
		
		System.out.println("searchList : " + searchList);
		
		return mv;
	}
	
	
	//마이페이지 - 예약,리뷰 카운트 / 예약리스트 불러오기	
	@RequestMapping(value ="goMyPage.me")
 	public ModelAndView goMyPage(HttpSession session, ModelAndView mv, Store s) {
 		Member m = (Member) session.getAttribute("loginUser");
 		
 		int rcount = ms.selectRcount(m.getMid(), m.getmCode());
 		int reviewCount = ms.selectReviewCount(m.getMid(), m.getmCode());
 		
        s.setMid(m.getMid());
        
        int mid = s.getMid();
        
 		session.setAttribute("rcount", rcount);
 		session.setAttribute("reviewCount", reviewCount);
 		
 		ArrayList<Reservation> reservList = ms.selectReservList(m.getMid(), m.getmCode());
 		
 		System.out.println("Controller reservList : " + reservList);
 		
 		mv.addObject("reservList", reservList);
 		mv.setViewName("myPage/myPage");
 		
 		return mv;
 	}

	//마이페이지 - 리뷰리스트 불러오기
	@RequestMapping(value = "goMyPageReview.me")
	public ModelAndView goMyPageReview(HttpSession session, ModelAndView mv, HttpServletRequest request) {
		Member m = (Member) session.getAttribute("loginUser");
		
		//페이징 처리 추가
		int currentPage;	//현재 페이지를 표시할 변수
		int limit;			//한 페이지에 게시글이 몇 개 보여질 것인지
		int maxPage;		//전체 페이지에서 가장 마지막 페이지
		int startPage;		//한번에 표시될 페이지가 시작할 페이지
		int endPage;		//한번에 표시될 페이지가 끝나는 페이지

		//게시판은 1페이지부터 시작함
		currentPage = 1;

		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		//한페이지에 보여질 목록 갯수
		limit = 3;

		//전체 목록 갯수를 리턴받음
		int listCount = ms.selectReviewCount(m.getMid(), m.getmCode());

		System.out.println("listCount : " + listCount);

		//총 페이지수 계산
		//예를 들면, 목록 수가 123개 이면 13페이지가 필요함
		//짜투리 목록이 최소 1개일 때, 1page로 처리하기 위해서
		//전체 목록 / limit + 0.9
		maxPage = (int)((double)listCount / limit + 0.9);

		//현재 페이지에 보여줄 시작 페이지 수(10개씩 보여지게 할 경우)
		//아래쪽 페이지 수가 10개씩 보여지게 한다면
		//1, 11, 21, 31...
		startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit + 1;

		//목록 아래 보여질 마지막 페이지 수(10, 20, 30, ...)
		endPage = startPage + limit - 1;

		if(maxPage < endPage){
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		System.out.println("currentPage : " + currentPage);
		System.out.println("limit : " + limit);
		System.out.println("maxPage : " + maxPage);
		System.out.println("startPage : " + startPage);
		System.out.println("endPage : " + endPage);
		
		ArrayList<Review> reviewList = ms.selectReviewList(m.getMid(), m.getmCode(), pi);
		
		System.out.println("Controller reviewList : " + reviewList);

		mv.addObject("pi",pi);
		mv.addObject("reviewList", reviewList);
 		mv.setViewName("myPage/myPageReview");
 		
 		return mv;
	}

	@RequestMapping(value = "goMyPageQuestions.me")
	public String goMyPageQuestions() {

		return "myPage/myPageQuestions";
	}

	@RequestMapping(value = "goMyPageQuestionForm.me")
	public String goMyPageQuestionForm() {

		return "myPage/myPageQuestionForm";
	}
	
	@RequestMapping(value="showQnaDetail.me")
	public String goQnaDetail() {
		return "admin/qnaDetail";
	}
	
	@RequestMapping(value = "goAdminMain.me")
	public String goAdminMain() {
		
		return "admin/adminMain";
	}
	
	@RequestMapping(value = "goStorePage.me")
	public String goStorePage() {

		return "myPage/storePage";
	}
	
	@RequestMapping(value = "goMemberUpdate.me")
	public String goMemberUpdate() {
		
		return "myPage/goMemberUpdate";
	}
	
	    @ResponseBody
	    @RequestMapping(value = "profileUpload.me")
	    public ModelAndView profileUpload(HttpSession session, MultipartHttpServletRequest request, ModelAndView mv) {
	      Member m = (Member) session.getAttribute("loginUser");
	      
	      MultipartFile mf = request.getFile("PPhoto");
	      String path = request.getRealPath("resources/images/member");
	      String fileName = mf.getOriginalFilename();
	      File uploadFile = new File(path + "\\" + fileName);
	      
	      try {
	         mf.transferTo(uploadFile);
	      } catch (IllegalStateException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	      
	      m.setProfile(fileName);
	      m.getMid();
	      
	      System.out.println(fileName);
	      System.out.println("controller m : " + m);
	      
	      ms.profileUpload(m);
	      
	      mv.addObject("fileName",fileName);
	      mv.setViewName("jsonView");
	      return mv;      
	   }

}
