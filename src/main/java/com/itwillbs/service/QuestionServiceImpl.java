package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.QuestionDAO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.GetAnswersDTO;
import com.itwillbs.domain.GetQuestionsDTO;
import com.itwillbs.domain.QuestionDTO;
import com.itwillbs.domain.ServiceDTO;

@Service
public class QuestionServiceImpl implements QuestionService{
	
	@Inject
	private QuestionDAO questionDAO;
	

	@Override
	public List<String> getAnswers(int questions_id) {
		
		return questionDAO.getAnswers(questions_id);
	}

	@Override
	public ServiceDTO getServiceName(int services_id) {
		
		return questionDAO.getServiceName(services_id);
	}

	@Override
	public List<String> getCities() {
		
		return questionDAO.getCities();
	}

	@Override
	public List<GetQuestionsDTO> getQuestions(int services_id) {
		
		return questionDAO.getQuestions(services_id);
	}


}
