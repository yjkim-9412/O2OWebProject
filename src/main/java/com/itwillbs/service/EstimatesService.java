package com.itwillbs.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwillbs.domain.*;

public interface EstimatesService {
	
	public List<Integer> getEstimatesId(int account_id);
	
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id);
	
	public QuestionDTO getQuestion(int que_id);
	
	public AnswerDTO getAnswer(int ans_id);
	
	public List<String> getServiceName(int min);
	
	public List<GetEstimateDTO2> getEstimates(HashMap<String, Integer> map);
	
	// account_id와 estimates_id에 해당하는 service_name을 가지고 오는 메서드
	public List<GetProEstimateDTO> getProEstimates(Map<String, Integer> map);

	// estimates_id에 해당하는 PROESTIMATES 테이블 모든 컬럼을 가지고 오는 메서드
	public List<ProEstimatesDTO> getProEstimates2(int estimates_id);

	// pro의 주소정보를 출력하는 메서드
	public ProAddrDTO getProAddr(int pro_id);
}
