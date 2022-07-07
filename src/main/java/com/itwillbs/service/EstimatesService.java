package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.QuestionDTO;

public interface EstimatesService {
	
	public List<EstimatesDTO> getEstimatesId(EstimatesDTO estimatesDTO);
	
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id);
	
	public QuestionDTO getQuestion(int que_id);
	
	public AnswerDTO getAnswer(int ans_id);
	
	public List<String> getServiceName(int min);
}
