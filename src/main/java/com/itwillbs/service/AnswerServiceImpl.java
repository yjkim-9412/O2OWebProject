package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AnswerDAO;
import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.ServiceDTO;

@Service
public class AnswerServiceImpl implements AnswerService{
	
	@Inject
	private AnswerDAO answerDAO;

	@Override
	public AnswerDTO getAnswer_id(AnswerDTO answerDTO) {
	
		return answerDAO.getAnswer_id(answerDTO);
	}

	
	@Override
	public void insertEstimates(int account_id) {
		answerDAO.insertEstimates(account_id);
		
	}

	@Override
	public void insertEstimatesMid(EstimatesMidDTO estimatesMidDTO) {
		answerDAO.insertEstimatesMid(estimatesMidDTO);
		
	}

	@Override
	public int getEstimates_id() {
		
		return answerDAO.getEstimates_id();
	}

	
}
