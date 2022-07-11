package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.GetAnswersDTO;
import com.itwillbs.domain.GetQuestionsDTO;
import com.itwillbs.domain.ServiceDTO;

public interface QuestionDAO {
	
	public List<String> getAnswers(int questions_id);
	
	public ServiceDTO getServiceName(int services_id);
	
	public List<String> getCities();
	
	public List<GetQuestionsDTO> getQuestions(int services_id);

}
