package com.itwillbs.service;

import java.util.HashMap;
import java.util.List;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.GetEstimateDTO2;
import com.itwillbs.domain.QuestionDTO;

public interface EstimatesService {
	
//	public List<EstimatesDTO> getEstimatesId(EstimatesDTO estimatesDTO);
	
	public List<Integer> getEstimatesId(int account_id);
	
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id);
	
	public QuestionDTO getQuestion(int que_id);
	
	public AnswerDTO getAnswer(int ans_id);
	
	public List<String> getServiceName(int min);
	
	public List<GetEstimateDTO2> getEstimates(HashMap<String, Integer> map);

}
