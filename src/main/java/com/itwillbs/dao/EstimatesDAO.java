package com.itwillbs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.GetEstimateDTO2;
import com.itwillbs.domain.GetProEstimateDTO;
import com.itwillbs.domain.ProEstimatesDTO;
import com.itwillbs.domain.QuestionDTO;

public interface EstimatesDAO{
	
	public List<Integer> getEstimatesId(int account_id);
	
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id);
	
	public QuestionDTO getQuestion(int que_id);
	
	public AnswerDTO getAnswer(int ans_id);
	
	public List<String> getServiceName(int min);
	
	public List<GetEstimateDTO2> getEstimates(HashMap<String, Integer> map);
	
	public List<GetProEstimateDTO> getProEstimates(Map<String, Integer> map);
	
	public List<ProEstimatesDTO> getProEstimates2(int estimates_id);
}
