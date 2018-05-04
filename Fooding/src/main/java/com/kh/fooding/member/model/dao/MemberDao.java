package com.kh.fooding.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.review.model.vo.Review;

public interface MemberDao {

	Member loginCheck(Member m) throws LoginException;

	int insertMember(Member m, SqlSessionTemplate sqlSession);
	
	ArrayList<Member> selectMemberList( ) throws selectMemberException;

	ArrayList<Member> selectEditList(ArrayList<String> midlist);

	int updateMembers(ArrayList<String> midArr);

	ArrayList<Member> searchMember(String searchCon, Map<String, String> data);

	int idCheck(String checkId, SqlSessionTemplate sqlSession);

	int insertStore(Member m, SqlSessionTemplate sqlSession);
	
	int selectRcount(int mid);

	int selectReviewCount(int mid);

	ArrayList<Reservation> selectReservList(int mid);

	ArrayList<Review> selectReviewList(int mid, PageInfo pi);

	int profileUpload(Member m, SqlSessionTemplate sqlSession);

	int selectSrcount(int mid);

	int selectSreviewCount(int mid);

}
