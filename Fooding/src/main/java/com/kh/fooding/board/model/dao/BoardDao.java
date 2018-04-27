package com.kh.fooding.board.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.exception.updateException;
import com.kh.fooding.board.model.vo.Board;

public interface BoardDao {

	int insertBoard(Board b, SqlSessionTemplate sqlSession) throws insertException;

	ArrayList<Board> selectBoardList(Board b, SqlSessionTemplate sqlSession);

	int getListCount(SqlSessionTemplate sqlSession, Board b);

	int getAllListCount(SqlSessionTemplate sqlSession);

	ArrayList<Board> getAllQuestions(SqlSessionTemplate sqlSession);

	ArrayList<Board> searchQList(SqlSessionTemplate sqlSession, String searchCon, Map<String, String> data) ;

	Board searchOneQuestion(SqlSessionTemplate sqlSession, String bid)  throws searchException;

	int insertReply(SqlSessionTemplate sqlSession, Board b);

	ArrayList<Board> selectAnwerList(Board b, SqlSessionTemplate sqlSession);

	Board selectAnswer(String bid, SqlSessionTemplate sqlSession);

	int deleteQuestion(String bid, SqlSessionTemplate sqlSession)  throws updateException ;

	int updateAnswer(String bid, SqlSessionTemplate sqlSession, String answer);

	int deleteAnswer(String bid, SqlSessionTemplate sqlSession);

}
