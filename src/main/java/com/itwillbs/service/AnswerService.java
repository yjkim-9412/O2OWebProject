package com.itwillbs.service;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.ServiceDTO;

public interface AnswerService {
	
	public AnswerDTO getAnswer_id(AnswerDTO answerDTO);
	
	public void insertEstimates(int account_id);
	
	public ServiceDTO getEstimates_id(int account_id);
	
	public void insertAnswer(AnswerDTO answerDTO);
}
