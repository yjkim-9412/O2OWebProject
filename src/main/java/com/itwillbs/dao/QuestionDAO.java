package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.QuestionDTO;
import com.itwillbs.domain.ServiceDTO;

public interface QuestionDAO {
	
	public List<String> getQuestions(int services_id);
	
	public List<Integer> getQuestions_id(int services_id);
	
	public List<String> getAnswers(int questions_id);
	
	public ServiceDTO getServiceName(int services_id);
	
	public List<String> getCities();
}
