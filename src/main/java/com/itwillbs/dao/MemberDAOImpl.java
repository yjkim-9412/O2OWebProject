package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	//마이바티스 객체생성
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.member.MemberMapper";
	
	@Override
	public void insertMember(MemberDTO memberDTO) {
		System.out.println("MemberDAOImpl insertMember()");
		//디비작업
		// 메서드 호출
		sqlSession.insert(namespace+".insertMember", memberDTO);
	}

	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {
		
		return sqlSession.selectOne(namespace+".userCheck", memberDTO);
	}

	@Override
	public MemberDTO getMember(int id) {
		
		return sqlSession.selectOne(namespace+".getMember", id);
	}

	@Override
	public void updateName(MemberDTO memberDTO) {

		sqlSession.update(namespace+".updateName", memberDTO);

	}
	
	@Override
	public void updateEmail(MemberDTO memberDTO) {

		sqlSession.update(namespace+".updateEmail", memberDTO);

	}
	
	@Override
	public void updatePass(MemberDTO memberDTO) {

		sqlSession.update(namespace+".updatePass", memberDTO);

	}
	
	@Override
	public void deleteMember(MemberDTO memberDTO) {
		sqlSession.delete(namespace+".deleteMember", memberDTO);
	}
	



	// 	----------- CHATROOM -----------
	@Override
	public MemberDTO getMemberE(String email) {
		return sqlSession.selectOne(namespace+".selectMemberE",email);
	}
}
