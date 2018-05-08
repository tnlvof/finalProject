package com.kh.fooding.board.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.board.model.dao.BoardDao;
import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.exception.updateException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.board.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bd;
	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertBoard(Board b ) throws insertException{
		int result; 
		
		result = bd.insertBoard(b, sqlSession);
		
		return result ;
	}

	// 게시물 리스트 가져오기
	@Override
	public ArrayList<Board> selectBoardList(Board b, com.kh.fooding.common.PageInfo pi) {
		ArrayList<Board> list = bd.selectBoardList(b, sqlSession, pi);
		
		return list;
	}
	

	// 리스트 카운트 가져오기
	@Override
	public int getListCount(Board b) {
		
		int result = bd.getListCount(sqlSession, b);
		
		return result;
	}

	//리스트 카운트 전부 조회
	@Override
	public int getAllListCount() {
		int result = bd.getAllListCount(sqlSession);
		
		return result ;
	}

	// 문의 사항 전부 조회
	@Override
	public ArrayList<Board> selectAllBoardList() {
		
		ArrayList<Board> boardList = bd.getAllQuestions(sqlSession);
		
		return boardList;
	}

	// 게시판 검색
	@Override
	public ArrayList<Board> searchQuestions(String searchCon, Map<String, String> data) {
		ArrayList<Board> searchQList = bd.searchQList(sqlSession, searchCon, data);
		
		return searchQList;
	}

	// 게시판 상세 조회
	@Override
	public Board selectOneQuestion(String bid) throws searchException {
	
		Board b = bd.searchOneQuestion(sqlSession, bid);
		return b;
		
	}

	// 문의글 답변 등록
	@Override
	public int insertReply(Board b) {
		
		int result = bd.insertReply(sqlSession, b);
		
		return result;
	}

	// 문의글 답변 리스트 가져오기
	@Override
	public ArrayList<Board> selectAnswerList(Board b) {
		
		ArrayList<Board> answerList = bd.selectAnwerList(b, sqlSession);
		
		return answerList;
	}

	// 문의글 답변 가져오기 admin
	@Override
	public Board selectAnswer(String bid) {
		Board b = bd.selectAnswer(bid, sqlSession);
		return b;
	}

	// 문의글 삭제
	@Override
	public int deleteQuestion(String bid)  throws updateException {
		
		int result = bd.deleteQuestion(bid, sqlSession);
		
		return result;
	}

	// 답변 수정 
	@Override
	public int updateAnswer(String bid,String answer) {
		
		int result = bd.updateAnswer(bid, sqlSession, answer);
	
		return result;
	}

	// 답변 삭제
	@Override
	public int deleteAnswer(String bid) {
		int result = bd.deleteAnswer(bid, sqlSession);
		
		return result;
	}
	
	//공지사항 전체 목록 
		@Override
		public List<Board> listAll() throws Exception {
			return bd.listAll();
		}
		
		@Override
		public void create(Board board)throws Exception{
			bd.create(board);
		}
		
		//공지글 상세보기
		@Override
		public Board read(int bid) throws Exception{
			return bd.read(bid);
			
		}
		
		//공지글 조회수 증가
		@Override
		public void increaseViewCnt(int bid, HttpSession session) throws Exception{
			
			//세션에 저장된 조회시간 검색
			long update_time = 0;
			
			//최초로 보는경우 세션에 저장된 값이 없어서 if문 실행안됨ㅠㅠ
			if(session.getAttribute("update_time"+bid)!=null) {
			
			//세션에서 읽어오기
			update_time = (long)session.getAttribute("update_time"+bid);
			}
			
			//시스템의 현재 시간을 current_time에 저장
			long current_time = System.currentTimeMillis();

			
			//일정시간이 경과후 조회수 증가 처리 24*60*1000(24시간)
			//시스템 현재시간-열람시간 > 일정시간(조회수증가가가능하도록지정한시간)
			if(current_time - update_time > 5*1000) {
				bd.increaseViewCnt(bid);
				//세션에 시간을 저장: "update_time"+bno는 다른변수와 중복되지않게 명명한 것
				session.setAttribute("update_time"+bid, current_time);
			}
		
		}
		
	    // 03. 공지 수정
	    @Override
	    public void update(Board board) throws Exception {
	        bd.update(board);
	    }

		
	    // 04. 공지 삭제
	    @Override
	    public void delete(int bid) throws Exception {
	        bd.delete(bid);
	    }
		
		

	
	
}
