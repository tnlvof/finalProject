package com.kh.fooding.member.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Member m) throws LoginException;

	void insertMember(Member m);

	ArrayList<Member> selectMemberList();

}
