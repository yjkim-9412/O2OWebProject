package com.itwillbs.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ProDTO;

import javax.inject.Inject;

@Repository
public class ProDAOImpl implements ProDAO{
    @Inject
    private SqlSession sqlSession;
    
    private static final String namespace="com.itwillbs.member.ProMapper";
    
    @Override
    public void insertPro() {

    }
//	@Override
//	public ProDTO proCheck(ProDTO proDTO) {
//		
//		return sqlSession.selectOne(namespace+".ProCheck", proDTO);
//	}

	@Override
	public ProDTO proCheck() {
		System.out.println("ProDAOImpl proCheck()");
		return sqlSession.selectOne(namespace+".proCheck");
	}
    
}
