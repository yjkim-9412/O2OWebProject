package com.itwillbs.service;

import java.util.List;

public interface QuestionService {
	
	public List<String> getQuestions(int services_id);
	
	public List<Integer> getQuestions_id(int services_id);
}
