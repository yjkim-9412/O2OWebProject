package com.itwillbs.service;


import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.EstimatesMidDTO;

public interface AnswerService {
	
	public AnswerDTO getAnswer_id(AnswerDTO answerDTO);
	
	public void insertEstimates(int account_id);
	
	public void insertEstimatesMid(EstimatesMidDTO estimatesMidDTO);
	
	public int getEstimates_id();
	
	public CityDTO getCityId(String city);
	
	public DistrictDTO getDistrictsId(DistrictDTO districtDTO);
	
	public AddistrictDTO getAddistrictId(AddistrictDTO addistrictDTO);

	public void insertAddress(AddressDTO addressDTO);
}
