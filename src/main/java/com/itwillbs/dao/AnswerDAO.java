package com.itwillbs.dao;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.ServiceDTO;

public interface AnswerDAO {

	public AnswerDTO getAnswer_id(AnswerDTO answerDTO);
	
	public void insertEstimates(int account_id);
	
	public ServiceDTO getEstimates_id(int account_id);
	
	public void insertAnswer(AnswerDTO answerDTO);
}
