package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.ServiceDTO;

@Repository
public class AnswerDAOImpl implements AnswerDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.answer.AnswerMapper";

	@Override
	public AnswerDTO getAnswer_id(AnswerDTO answerDTO) {
	
		return sqlSession.selectOne(namespace+".getAnswer_id", answerDTO);
	}

	@Override
	public void insertEstimates(int account_id) {
		sqlSession.insert(namespace+".insertEstimates", account_id);
		
	}


	@Override
	public void insertEstimatesMid(EstimatesMidDTO estimatesMidDTO) {
		sqlSession.insert(namespace + ".insertEstimatesMid", estimatesMidDTO);
		
	}

	@Override
	public int getEstimates_id() {
		
		return sqlSession.selectOne(namespace+".getEstimates_id");
	}
	
	
}
