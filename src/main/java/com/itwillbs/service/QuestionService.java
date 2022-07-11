package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.GetQuestionsDTO;
import com.itwillbs.domain.ServiceDTO;

public interface QuestionService {
	
	public List<String> getAnswers(int questions_id);
	
	public ServiceDTO getServiceName(int services_id);
	
	public List<String> getCities();
	
	public List<GetQuestionsDTO> getQuestions(int services_id);
	
}
