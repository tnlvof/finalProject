package com.kh.fooding.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.review.model.vo.Review;

public interface MemberService  {

	Member loginMember(Member m) throws LoginException;

	void insertMember(Member m);

	ArrayList<Member> selectMemberList( ) throws selectMemberException;

	ArrayList<Member> selectEditList(ArrayList<String> midlist);

	int updateMembers(ArrayList<String> midArr  );

	ArrayList<Member> searchMember(String searchCon, Map<String, String> data);

	int idCheck(String checkId);

	int selectRcount(int mid, String mCode);

	int selectReviewCount(int mid, String mCode);

	ArrayList<Reservation> selectReservList(int mid, String mCode);
	
	void insertStore(Member m);

	ArrayList<Review> selectReviewList(int mid, String mCode, PageInfo pi);

	void profileUpload(Member m);

}
