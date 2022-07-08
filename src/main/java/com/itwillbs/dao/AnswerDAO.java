package com.itwillbs.dao;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.ServiceDTO;

public interface AnswerDAO {

	public AnswerDTO getAnswer_id(AnswerDTO answerDTO);
	
	public void insertEstimates(int account_id);
	
	public void insertEstimatesMid(EstimatesMidDTO estimatesMidDTO);
	
	public int getEstimates_id();
	
	public CityDTO getCityId(String city);
	
	public DistrictDTO getDistrictsId(CityDTO cityDTO);

	
}
