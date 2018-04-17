package com.kh.fooding.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;

@Repository("md")

public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/*@Autowired
	private BCryptPasswordEncoder passwordEncoder;*/

	@Override
	public Member loginCheck(Member m) throws LoginException {
		System.out.println("dao userId : " + m.getUserId());
		System.out.println("dao userPwd : " + m.getUserPwd());
		System.out.println("sqlSession : " + sqlSession);
		
		Member member = sqlSession.selectOne("Member.loginCheck", m);
		
		if(member == null){
			throw new LoginException("로그인 실패!");
		}
		return member;
	}

	@Override
	public int insertMember(Member m, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("Member.insertMember", m);
	}

	@Override
	public ArrayList<Member> selectMemberList() throws selectMemberException {
	//	System.out.println("Dao 옴 ");		
	
		ArrayList<Member> memberlist = (ArrayList) sqlSession.selectList("Member.selectMemberList");			
				
		if(memberlist == null) {
			throw new selectMemberException("회원 정보 리스트 조회 실패");
		}		
		
		System.out.println("list DAO: " + memberlist);
		
		
		return memberlist;
	}

	//수정할 회원 리스트
	@Override
	public ArrayList<Member> selectEditList(ArrayList<String> midlist) {
		ArrayList<Member> editList = (ArrayList) sqlSession.selectList("Member.selectEditList", midlist);
		
				
		return editList;
	}
	

}
