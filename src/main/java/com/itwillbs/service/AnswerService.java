package com.itwillbs.service;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.ServiceDTO;

public interface AnswerService {
	
	public AnswerDTO getAnswer_id(AnswerDTO answerDTO);
	
	public void insertEstimates(int account_id);
	
	public void insertEstimatesMid(EstimatesMidDTO estimatesMidDTO);
	
	public int getEstimates_id();
	
}
