package com.kh.fooding.board.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.exception.updateException;
import com.kh.fooding.board.model.service.BoardService;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.vo.Member;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	//회원 문의 사항 리스트 조회
	@RequestMapping(value = "goMyPageQuestions.bo")
	public ModelAndView goMyPageQuestions(ModelAndView mv, HttpSession session, HttpServletRequest request ) {
		
		String currentPageReq= request.getParameter("currentPage");
		
		
		Board b = new Board ();
		Member m = (Member) session.getAttribute("loginUser");
		b.setMid(m.getMid());
		
		
		
		//페이징 처리 추가
				int currentPage;	//현재 페이지를 표시할 변수
				int limit;			//한 페이지에 게시글이 몇 개 보여질 것인지
				int maxPage;		//전체 페이지에서 가장 마지막 페이지
				int startPage;		//한번에 표시될 페이지가 시작할 페이지
				int endPage;		//한번에 표시될 페이지가 끝나는 페이지
				
				//게시판은 1페이지부터 시작함
				currentPage = 1;
				
				if(currentPageReq != null){
					currentPage = Integer.parseInt(currentPageReq);
				}
				
				//한페이지에 보여질 목록 갯수
				limit = 5;
				
				//전체 목록 갯수를 리턴받음				
				int listCount = bs.getListCount(b);
				
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
				
				PageInfo pi = new PageInfo(currentPage, listCount, 
										limit, maxPage, startPage, endPage);
				
		
		//문의 게시판 리스트 불러오기		
		ArrayList<Board> boardList = bs.selectBoardList(b, pi);
		//답변 리스트 불러오기
		ArrayList<Board> answerList = bs.selectAnswerList(b);
		System.out.println(answerList);
		
		for(int i = 0; i<boardList.size();i++) {
			//문의 게시판 답변 리스트 bid가 pno인지 비교
			for(int j = 0; j < answerList.size();j++) {
				if(boardList.get(i).getBid()==answerList.get(j).getPno()) {
					//맞으면 boardList setter로 답변 지정			
					System.out.println("답변 찾음");
					boardList.get(i).setAnswer(answerList.get(j).getbContent());	
					boardList.get(i).setAnswerDate(answerList.get(j).getEnrollDateJson());
				}
			}
		
		}
		
		System.out.println( "보드 리스트 수정 : "+ boardList);
		
		mv.addObject("pi", pi);
		
		mv.addObject("boardList", boardList);
			
		//멤버 마이 페이지
		mv.setViewName("myPage/myPageQuestions");
			
		
		return mv;
	}
	
	
	//문의 게시판 전부 조회 - admin 전용
	@RequestMapping(value = "selectAllBoard.bo")
	public ModelAndView selectAllBoard(ModelAndView mv ) {
					
		//문의 게시판 리스트 불러오기
		
		ArrayList<Board> boardList = bs.selectAllBoardList();		
		System.out.println("boardList 전부 : " + boardList);					
		
		mv.addObject("boardList", boardList);
		
		//어드민 페이지
		mv.setViewName("jsonView");		
		
		return mv;
	}
	
	
	//문의 게시글 올리기
	@RequestMapping(value="insertBoard.bo")
	public ModelAndView insertBoard(ModelAndView mv , Board b, HttpSession session ,String bContent ) {
		//System.out.println("오니?");
		Member m = (Member) session.getAttribute("loginUser");
		b.setMid(m.getMid());		
		b.setbContent(bContent);
		b.setbTitle(bContent);	
		
		System.out.println(b);
		
			try {
			
			int result = bs.insertBoard(b);
			//ArrayList<Board> questionList = bs.selectBoardList(b);
		
			mv.setViewName("myPage/myPage");
			
		} catch (insertException e) {
			
			mv.addObject("message", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		
		return mv;
	}
	
	
	//게시판 상세 조회 admin 전용
	@RequestMapping(value="selectOne.bo")
	public ModelAndView selectOneBoard(HttpServletRequest request, ModelAndView mv) {
		String bid = request.getParameter("bid");
		System.out.println(bid);		
		
		try {
			Board b = bs.selectOneQuestion(bid);
			System.out.println("상세 조회 : " + b);
			
			
			Board answer = bs.selectAnswer(bid);
			System.out.println(answer);
			
			if(answer!=null) {
				b.setAnswer(answer.getbContent());
				b.setAnswerBid(answer.getBid());
				b.setAnswerDate(answer.getEnrollDateJson());
			}			
		
			System.out.println( "보드 리스트 수정 : "+ b);
			
			mv.addObject("b",b);
			mv.setViewName("admin/qnaDetail");
			
		} catch (searchException e) {
			mv.addObject("message", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		
		return mv; 
	}
	
	//게시판 검색 admin
	@RequestMapping(value="searchQuestions.bo", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView searchQuestions(ModelAndView mv, @RequestBody Map<String, String> data) {
		/*System.out.println("넘어옴?");
		System.out.println(data);*/

		String searchCon = data.get("key");

		ArrayList<Board> searchQList = bs.searchQuestions(searchCon, data);
		System.out.println("searchQList : " + searchQList);
		
		mv.addObject("searchQList", searchQList);
		mv.setViewName("jsonView");	
		
		System.out.println("searchQList : " + searchQList);
		
		return mv;
	}
	
	
	//답변 등록 admin
	@RequestMapping(value="insertReply.bo",method = RequestMethod.POST)	
	@ResponseBody
	public ModelAndView insertReply(ModelAndView mv, @RequestBody Map<String, String> replyMap) {
		//System.out.println("넘어옴?");
		System.out.println(replyMap);
				
		String bid=replyMap.get("bid");
		String content=replyMap.get("reply");
		
		Board b = new Board();
		
		b.setPno(Integer.parseInt(bid));
		b.setbContent(content);
		
		int result = bs.insertReply(b);
		
		
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	
	//질문 삭제 admin
	@RequestMapping(value="deleteQna.bo")
	public ModelAndView deleteQuestion(ModelAndView mv, HttpServletRequest request) {
		String bid = request.getParameter("bid");
				
		try {
			int result = bs.deleteQuestion(bid);
		} catch (updateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.setViewName("admin/adminMain");
		
		return mv;
	}
	
	//답변 수정  admin
	@RequestMapping(value="updateAnswer.bo")
	public ModelAndView updateAnswer(ModelAndView mv, HttpServletRequest request) {
		String bid = request.getParameter("bid");		
		String answer = request.getParameter("answer");
		
		System.out.println("앤써 : " + answer);
		
		int result = bs.updateAnswer(bid, answer);
		
		
		mv.setViewName("admin/adminMain");
		
		return mv;
	}
	
	//답변 삭제 admin
	@RequestMapping(value="deleteAnswer.bo")
	public ModelAndView deleteAnswer(ModelAndView mv, HttpServletRequest request) {
		String bid = request.getParameter("bid");
		
		int result = bs.deleteAnswer(bid);
		
		mv.setViewName("admin/adminMain");
		return mv;
	}
	
	//공지사항 전체목록2
		 @RequestMapping(value="list.bo", method=RequestMethod.GET)
		 public String list(Model model) throws Exception {
			 List<Board> list = bs.listAll();
			 System.out.println( list);
			 model.addAttribute("list",list);
			 //결과를 list라는 이름으로 request에 저장
			 return "notice/noticeMain";
			 
		 }
		 
		 
		//1-1 공지사항 작성화면으로 ㄱ ㄱ 
		 @RequestMapping(value="goNoticeWrite.bo", method=RequestMethod.GET)
			public String write(HttpServletRequest request) {
				return "notice/boardInsertForm"; 
		 }
		 
		 //1-2 공지사항 작성처리
		 @RequestMapping(value="insert.bo")
		 public String insert(Board board,HttpSession session, Model model) throws Exception{
			Member m=(Member) session.getAttribute("loginUser");
			board.setMid(m.getMid());
			 System.out.println(board);
			 bs.create(board);
					 
			 return "redirect:list.bo";
		 }
		 
		 
		 //2 공지글 상세내용 조회, 공지사항 조회수 증가
		 @RequestMapping(value="noticeRead.bo", method=RequestMethod.GET)
		 public ModelAndView view(ModelAndView mv,HttpServletRequest request, HttpSession session) throws Exception {

			 int bid = Integer.parseInt(request.getParameter("boardId"));
			 
			 //조회수 증가처리
			 bs.increaseViewCnt(bid, session);
			 
			 //모델(데이터) + 뷰(화면)를 함께 전달하는 객체
			 
			 
		 System.out.println(bid);
		 
			 
			 
			 Board b =  bs.read(bid);
			 
			 //뷰이름
			 mv.setViewName("notice/noticeRead");
			 
			 //뷰에 전달할 데이터
			 mv.addObject("board", b);
			 return mv;
		 }
		 
		 
		    // 04. 공지 수정
		    @RequestMapping(value="update.bo", method=RequestMethod.POST)
		    public String update(@ModelAttribute Board board,HttpServletRequest request) throws Exception{
				 /*int bid = Integer.parseInt(request.getParameter("baordId"));*/
				/* System.out.println("공지수정아이디:"+bid);*/
				
		    	/*board.setBid(bid);*/
		    	System.out.println(board);
		    	bs.update(board);
		    	System.out.println("공지수정 board: "+board);
		        return "redirect:list.bo";

		    }
		    
		    // 05. 공지 삭제
		    @RequestMapping(value="delete.bo")
		    public String delete(HttpServletRequest request, RedirectAttributes rttr) throws Exception{
				 int bid = Integer.parseInt(request.getParameter("boardId"));
				 System.out.println("공지삭제아이이디"+bid);
				 
				 bs.delete(bid);

		        
		        
		       return "redirect:list.bo";
		    }

	
	
	

}
