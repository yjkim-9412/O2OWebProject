package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AnswerDTO;
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
	public ServiceDTO getEstimates_id(int account_id) {
		
		return sqlSession.selectOne(namespace+".getEstimates_id", account_id);
	}



	@Override
	public void insertAnswer(AnswerDTO answerDTO) {
		
		sqlSession.insert(namespace+".insertAnswer", answerDTO);
	}
	
	
	
}
