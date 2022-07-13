package com.itwillbs.dao;


import com.itwillbs.domain.*;

public interface MemberDAO {
	//추상메서드 정의
		public void insertMember(MemberDTO memberDTO);
		
		public MemberDTO userCheck(MemberDTO memberDTO);
		
		public MemberDTO getMember(int id);
		
		public void updateName(MemberDTO memberDTO);

		public void updateEmail(MemberDTO memberDTO);

		public void updatePass(MemberDTO memberDTO);

		public void deleteMember(MemberDTO memberDTO);
		public void updateMember(MemberDTO memberDTO);

	// 	----------- CHATROOM -----------
		public MemberDTO getMemberE(String email);
}
