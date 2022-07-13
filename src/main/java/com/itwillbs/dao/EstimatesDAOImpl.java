package com.itwillbs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.GetEstimateDTO2;
import com.itwillbs.domain.GetProEstimateDTO;
import com.itwillbs.domain.ProEstimatesDTO;
import com.itwillbs.domain.QuestionDTO;

@Repository
public class EstimatesDAOImpl implements EstimatesDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.estimates.EstimatesMapper";

	@Override
	public List<Integer> getEstimatesId(int account_id) {
		
		return sqlSession.selectList(namespace + ".getEstimatesId", account_id);
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

	@Override
	public List<GetEstimateDTO2> getEstimates(HashMap<String, Integer> map) {
		
		return sqlSession.selectList(namespace + ".getEstimates", map);
	}

	@Override
	public List<GetProEstimateDTO> getProEstimates(Map<String, Integer> map) {
		
		return sqlSession.selectList(namespace + ".getProEstimates", map);
	}

	@Override
	public List<ProEstimatesDTO> getProEstimates2(int estimates_id) {
		
		return sqlSession.selectList(namespace + ".getProEstimates2", estimates_id);
	}
	
	
	
	
}
