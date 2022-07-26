package com.kh.checkmate.member.model.service;

import com.kh.checkmate.member.model.vo.Member;

public interface MemberService {

	void certifiedPhoneNumber(String userPhoneNumber, int randomNumber);

	Member loginMember(Member m);

	int insertMember(Member m);

	int idCheck(String userId);

	int nickCheck(String userNick);

	int insertMember2(Member m);

	String findId(String userPhone);

	int changePwd(Member m);

	Member NaverloginMember(String userId);

	Member KakaologinMember(String userEmail);

	int emailCheck(String userEmail);

	
	
}
