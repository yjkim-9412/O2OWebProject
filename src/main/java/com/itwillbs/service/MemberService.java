package com.itwillbs.service;

import java.util.HashMap;

import com.itwillbs.domain.MemberDTO;



public interface MemberService {
	//추상메서드 정의
	public void insertMember(MemberDTO memberDTO);
	
	public MemberDTO userCheck(MemberDTO memberDTO);
	
	public MemberDTO getMember(int id);
	
	public void updateMember(MemberDTO memberDTO);

//  ----------- 카카오 API ----------- 
	public String getAccessToken (String authorize_code);
	public HashMap<String, Object> getUserInfo(String access_Token);

// 	----------- CHATROOM -----------
	public MemberDTO getMemberE(String email);

	
}
