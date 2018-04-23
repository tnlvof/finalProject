package com.kh.fooding.board.model.service;

import java.util.ArrayList;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;

public interface BoardService {

	int insertBoard(Board b) throws insertException;

	ArrayList<Board> selectBoardList(Board b );

}
