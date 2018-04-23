package com.kh.fooding.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;

public interface BoardDao {

	int insertBoard(Board b, SqlSessionTemplate sqlSession) throws insertException;

}
