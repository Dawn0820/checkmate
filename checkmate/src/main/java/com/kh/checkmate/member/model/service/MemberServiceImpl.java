package com.kh.checkmate.member.model.service;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.checkmate.member.model.dao.MemberDao;
import com.kh.checkmate.member.model.vo.Member;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
		String api_key = "NCSS3PFWUTYR1WSM";
	    String api_secret = "BB1TZC8GCDKKBEFLUWHPA54WF1QURPKB";
	    Message coolsms = new Message(api_key, api_secret);
	    
	    HashMap<String,String> params = new HashMap<String,String>();
	    params.put("to", userPhoneNumber);
	    params.put("from", "01045915084");
	    params.put("type", "SMS");
	    params.put("text", "[CHECKMATE] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2");
	
	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	}

	@Override
	public Member loginMember(Member m) {		
		Member loginUser = memberDao.loginMember(sqlSession,m);		
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		
		int result = memberDao.insertMember(sqlSession,m);
		return result;
	}
	
	@Override
	public int insertMember2(Member m) {
		
		int result2 = memberDao.insertMember2(sqlSession,m);
		return result2;
	}

	@Override
	public int idCheck(String userId) {
		
		return memberDao.idCheck(sqlSession,userId);
	}

	@Override
	public int nickCheck(String userNick) {
		return memberDao.nickCheck(sqlSession,userNick);
	}

	


}
