package com.kh.fooding.board.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;

public interface BoardDao {

	int insertBoard(Board b, SqlSessionTemplate sqlSession) throws insertException;

	ArrayList<Board> selectBoardList(Board b, SqlSessionTemplate sqlSession);

	int getListCount(SqlSessionTemplate sqlSession, Board b);

	int getAllListCount(SqlSessionTemplate sqlSession);

	ArrayList<Board> getAllQuestions(SqlSessionTemplate sqlSession);

	ArrayList<Board> searchQList(SqlSessionTemplate sqlSession, String searchCon, Map<String, String> data);

}
