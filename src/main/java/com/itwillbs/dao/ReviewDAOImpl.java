package com.itwillbs.dao;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Inject
	private SqlSession sqlSession;

	private static final String namespace="com.itwillbs.member.ReviewMapper";
	
	@Override
	public void insertReviews(ReviewDTO reviewDTO) {
		System.out.println("ReviewDAOImpl insertReview()");
		sqlSession.insert(namespace+".insertReview", reviewDTO);
		
	}

	@Override
	public int getMaxId() {
		return sqlSession.selectOne(namespace+".getMaxId");
	}
	
	
}
