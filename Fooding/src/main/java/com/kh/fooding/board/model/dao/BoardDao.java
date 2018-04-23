package com.kh.fooding.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;

public interface BoardDao {

	int insertBoard(Board b, SqlSessionTemplate sqlSession) throws insertException;

	ArrayList<Board> selectBoardList(Board b, SqlSessionTemplate sqlSession);

}
