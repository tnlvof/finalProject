package com.kh.fooding.member.model.dao;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.vo.Member;

public interface MemberDao {

	Member loginCheck(Member m) throws LoginException;

}
