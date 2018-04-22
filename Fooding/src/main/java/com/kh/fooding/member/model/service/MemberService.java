package com.kh.fooding.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;

public interface MemberService  {

	Member loginMember(Member m) throws LoginException;

	void insertMember(Member m);

	ArrayList<Member> selectMemberList( ) throws selectMemberException;

	ArrayList<Member> selectEditList(ArrayList<String> midlist);

	int updateMembers(ArrayList<String> midArr  );

	ArrayList<Member> searchMember(String searchCon, Map<String, String> data);

	int idCheck(String checkId);

}
