package com.itwillbs.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import com.itwillbs.domain.*;
import org.springframework.stereotype.Service;

import com.itwillbs.dao.EstimatesDAO;

@Service
public class EstimatesServiceImpl implements EstimatesService{
	
	@Inject
	private EstimatesDAO estimatesDAO;
	
	@Override
	public List<Integer> getEstimatesId(int account_id) {
		
		return estimatesDAO.getEstimatesId(account_id);
	}

	@Override
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id) {
		
		return estimatesDAO.getEstimatesMid(estimates_id);
	}

	@Override
	public QuestionDTO getQuestion(int que_id) {
		
		return estimatesDAO.getQuestion(que_id);
	}

	@Override
	public AnswerDTO getAnswer(int ans_id) {
		
		return estimatesDAO.getAnswer(ans_id);
	}

	@Override
	public List<String> getServiceName(int min) {
		
		return estimatesDAO.getServiceName(min);
	}

	@Override
	public List<GetEstimateDTO2> getEstimates(HashMap<String, Integer> map) {
		
		return estimatesDAO.getEstimates(map);
	}

	@Override
	public List<GetProEstimateDTO> getProEstimates(Map<String, Integer> map) {
	
		return estimatesDAO.getProEstimates(map);
	}

	@Override
	public List<ProEstimatesDTO> getProEstimates2(int estimates_id) {
		
		return estimatesDAO.getProEstimates2(estimates_id);
	}

	@Override
	public ProAddrDTO getProAddr(int pro_id) {
		return estimatesDAO.getProAddr(pro_id);
	}

	@Override
	public void deleteEstimate(int estimate_id) {
		estimatesDAO.deleteEstimate(estimate_id);
	}

	@Override
	public void deleteEstimateMid(List<Integer> estimatesMid_id) {
		estimatesDAO.deleteEstimateMid(estimatesMid_id);
	}
}
