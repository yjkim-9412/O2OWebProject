package com.itwillbs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwillbs.domain.*;

public interface EstimatesDAO{
	
	public List<Integer> getEstimatesId(int account_id);
	
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id);
	
	public QuestionDTO getQuestion(int que_id);
	
	public AnswerDTO getAnswer(int ans_id);
	
	public List<String> getServiceName(int min);
	
	public List<GetEstimateDTO2> getEstimates(HashMap<String, Integer> map);
	
	public List<GetProEstimateDTO> getProEstimates(Map<String, Integer> map);
	
	public List<ProEstimatesDTO> getProEstimates2(HashMap<String, Integer> map);

	public ProAddrDTO getProAddr(int pro_id);

	public void deleteEstimate(int estimate_id);

	public void deleteEstimateMid(List<Integer> estimatesMid_id);

	public void proEstimateDelete(int proEstimates_id);

}
