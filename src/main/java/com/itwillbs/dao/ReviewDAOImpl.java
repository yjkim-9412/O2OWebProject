package com.itwillbs.dao;

import javax.inject.Inject;


import com.itwillbs.domain.PageDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ReviewDTO;

import java.util.List;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Inject
	private SqlSession sqlSession;

	private static final String namespace="com.itwillbs.member.ReviewMapper";
	
	@Override
	public void insertReviews(ReviewDTO reviewDTO) {
		System.out.println("ReviewDAOImpl insertReviews()");
		sqlSession.insert(namespace+".insertReviews", reviewDTO);
		
	}

	@Override
	public List<ReviewDTO> getallReviews(PageDTO pageDTO) {
		return sqlSession.selectList(namespace+".getallReviews", pageDTO);
	}

	@Override
	public int getReviewCount(int pro_id) {
		return sqlSession.selectOne(namespace+".getReviewCount", pro_id);
	}

	@Override
	public double getreviewavg(int pro_id) {
		return sqlSession.selectOne(namespace+".getreviewavg", pro_id);
	}

	@Override
	public List<ReviewDTO> getratingfive() {
		ReviewDTO reviewDTO = new ReviewDTO();
		
		return sqlSession.selectList(namespace+".getratingfive",reviewDTO);
	}

	@Override
	public double getAllreviewavg() {
		return sqlSession.selectOne(namespace+".getAllreviewavg");
	}

	@Override
	public int getAllreviewcount() {
		return sqlSession.selectOne(namespace+".getAllreviewcount");
	}
	
	
	
}
