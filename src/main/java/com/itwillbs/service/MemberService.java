package com.itwillbs.service;

import java.util.HashMap;

import com.itwillbs.domain.MemberDTO;



public interface MemberService {
	//추상메서드 정의
	public void insertMember(MemberDTO memberDTO);
	
	public MemberDTO userCheck(MemberDTO memberDTO);
	
	public MemberDTO getMember(int id);
	
	public void updateName(MemberDTO memberDTO);
	
	public void updateEmail(MemberDTO memberDTO);
	
	public void updatePass(MemberDTO memberDTO);
	
	public void deleteMember(MemberDTO memberDTO);

//  ----------- 카카오 API ----------- 
	public String getAccessToken (String authorize_code);
	public HashMap<String, Object> getUserInfo(String access_Token);
	
}
