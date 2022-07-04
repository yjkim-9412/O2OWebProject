package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.QuestionDTO;
import com.itwillbs.domain.ServiceDTO;

@Repository
public class QuestionDAOImpl implements QuestionDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.question.QuestionMapper";

	@Override
	public List<String> getQuestions(int services_id) {
		
		return sqlSession.selectList(namespace+".getQuestions", services_id);
	}

	@Override
	public List<Integer> getQuestions_id(int services_id) {
		
		return sqlSession.selectList(namespace+".getQuestions_id", services_id);
	}

	@Override
	public List<String> getAnswers(int questions_id) {
		
		return sqlSession.selectList(namespace+".getAnswers", questions_id);
	}

	@Override
	public ServiceDTO getServiceName(int services_id) {
		
		return sqlSession.selectOne(namespace+".getServiceName", services_id);
	}
	
	
	
	
	
	
}
