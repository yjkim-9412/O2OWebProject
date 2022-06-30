package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.QuestionDAO;

@Service
public class QuestionServiceImpl implements QuestionService{
	
	@Inject
	private QuestionDAO questionDAO;
	
	@Override
	public List<String> getQuestions(int services_id) {
		return questionDAO.getQuestions(services_id);
	}

}
