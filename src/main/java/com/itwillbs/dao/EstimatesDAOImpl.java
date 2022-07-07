package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.QuestionDTO;

@Repository
public class EstimatesDAOImpl implements EstimatesDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.estimates.EstimatesMapper";

	@Override
	public List<EstimatesDTO> getEstimatesId(EstimatesDTO estimatesDTO) {
		
		return sqlSession.selectList(namespace + ".getEstimatesId", estimatesDTO);
	}

	@Override
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id) {
		
		return sqlSession.selectList(namespace + ".getEstimatesMid", estimates_id);
	}

	@Override
	public QuestionDTO getQuestion(int que_id) {
		
		return sqlSession.selectOne(namespace + ".getQuestion", que_id);
	}

	@Override
	public AnswerDTO getAnswer(int ans_id) {
		
		return sqlSession.selectOne(namespace + ".getAnswer", ans_id);
	}

	@Override
	public List<String> getServiceName(int min) {
		
		return sqlSession.selectList(namespace + ".getServiceName", min);
	}
	
	
	
	
}
