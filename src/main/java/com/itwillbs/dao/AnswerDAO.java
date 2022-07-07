package com.itwillbs.dao;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.ServiceDTO;

public interface AnswerDAO {

	public AnswerDTO getAnswer_id(AnswerDTO answerDTO);
	
	public void insertEstimates(int account_id);
	
	public void insertEstimatesMid(EstimatesMidDTO estimatesMidDTO);
	
	public int getEstimates_id();
	
}
