package com.kh.fooding.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;

public interface MemberDao {

	Member loginCheck(Member m) throws LoginException;

	int insertMember(Member m, SqlSessionTemplate sqlSession);
	
	ArrayList<Member> selectMemberList( ) throws selectMemberException;

	ArrayList<Member> selectEditList(ArrayList<String> midlist);

	int updateMembers(ArrayList<String> midArr);

	ArrayList<Member> searchMember(String searchCon, Map<String, String> data);

}
