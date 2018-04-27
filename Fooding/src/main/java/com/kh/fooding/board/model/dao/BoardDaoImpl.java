package com.kh.fooding.board.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.exception.updateException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.member.model.vo.Member;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertBoard(Board b, SqlSessionTemplate sqlSession ) throws insertException {
		int result ;
		
		result = sqlSession.insert("Board.insertQuestion", b);
		System.out.println( "리절트 : " + result);
		
		if(result < 0) {
			throw new insertException("문의글 등록 실패");
		}
		
		return result;
	}

	// BoardList 조회
	@Override
	public ArrayList<Board> selectBoardList(Board b, SqlSessionTemplate sqlSession) {
		
		System.out.println("dao와엿");
		
		ArrayList<Board> list = (ArrayList) sqlSession.selectList("Board.selectBoardList", b); 
		
		System.out.println(list);
		
		return list ;
	}

	// 보드 리스트 카운트 가져오기
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, Board b) {
		
		int result = sqlSession.selectOne("Board.countList", b); 
				
		return result;
	}

	// 보드 리스트 전부 가져오기
	@Override
	public int getAllListCount(SqlSessionTemplate sqlSession) {
		int result = sqlSession.selectOne("Board.countAllQuestions");
		return result;
	}

	// 문의 사항 전부 가져오기
	@Override
	public ArrayList<Board> getAllQuestions(SqlSessionTemplate sqlSession ) {
		ArrayList<Board > boardList = (ArrayList)sqlSession.selectList("Board.getAllQuestions");
		return boardList ;
	}

	// 게시글 검색 조회
	@Override
	public ArrayList<Board> searchQList(SqlSessionTemplate sqlSession, String searchCon,Map<String, String> data) {
		System.out.println("DAO data " + data);	
	
		String statement = "";
		
		switch(searchCon) {
			case "제목": statement = "Board.searchTitle";break;
			case "글쓴이":statement = "Board.searchWriter";break;
			case "처리여부":System.out.println("처리여부 : " + data.get("처리여부"));
						if(data.get("search").equals("처리됨") ) {
							
							statement = "Board.searchAnswered";
							
							System.out.println("처리됨");
							
						} else if( ! data.get("search").equals("처리됨")) {
							
							statement="Board.searchUnanswered";
							System.out.println("처리안됨");
						}
						break;
		}
		
		
		
		ArrayList<Board> searchQList = (ArrayList) sqlSession.selectList(statement, data);
		
		
		
		return searchQList;
	}

	// 문의 게시판 상세 조회
	@Override
	public Board searchOneQuestion(SqlSessionTemplate sqlSession, String bid) throws searchException {
		Board b = sqlSession.selectOne("Board.selectOneQuestion",bid);
		
		if(b == null) {
			throw new searchException("조회 실패");
		}
		
		return b;
	}

	// 답변 등록
	@Override
	public int insertReply(SqlSessionTemplate sqlSession, Board b) {
		
		int result = sqlSession.insert("Board.insertReply", b);
		int result2 = sqlSession.update("Board.updateQuestion", b);
		
		
		
		return result;
	}

	// 답변 리스트 가져오기
	@Override
	public ArrayList<Board> selectAnwerList(Board b, SqlSessionTemplate sqlSession) {
		
		ArrayList<Board> answerList = (ArrayList)sqlSession.selectList("Board.selectAnswerList", b);
		
		
		return answerList;
	}

	// 답변 가져오기
	@Override
	public Board selectAnswer(String bid, SqlSessionTemplate sqlSession) {
		System.out.println("dao온당");
		Board b = sqlSession.selectOne("Board.selectAnswer", bid);
				
		System.out.println("answer : " + b);
		return b;
	}

	// 질문 삭제하기 
	@Override
	public int deleteQuestion(String bid, SqlSessionTemplate sqlSession) throws updateException {
		int result = sqlSession.update("Board.deleteQuestion", bid);
		
		System.out.println("삭제 리절트 : " + result);
		
		if(result <= 0) {
			throw new updateException("업데이트 실패");
		}
		
		
		return result;
	}

	// 답변 수정 admin
	@Override
	public int updateAnswer(String bid, SqlSessionTemplate sqlSession, String answer) {
		
		Board b = new Board();
		
		b.setBid(Integer.parseInt(bid));
		b.setbContent(answer);
				
		int result = sqlSession.update("Board.updateAnswer", b); 
				
		return result;
	}

	// 답변 삭제 admin
	@Override
	public int deleteAnswer(String bid, SqlSessionTemplate sqlSession) {
		
		int result = sqlSession.update("Board.deleteAnswer", bid);
		
		return result;
	}

	


		
}
