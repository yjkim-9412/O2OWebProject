package com.itwillbs.service;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.itwillbs.dao.AnswerDAO;
import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
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


	@Override
	public CityDTO getCityId(String city) {
		
		return answerDAO.getCityId(city);
	}


	@Override
	public DistrictDTO getDistrictsId(DistrictDTO districtDTO) {

		return answerDAO.getDistrictsId(districtDTO);
	}


	@Override
	public AddistrictDTO getAddistrictId(AddistrictDTO addistrictDTO) {
		
		return answerDAO.getAddistrictId(addistrictDTO);
	}


	@Override
	public void insertAddress(AddressDTO addressDTO) {
		
		answerDAO.insertAddress(addressDTO);
	}


	@Override
	public int getMaxAddrId() {
		
		return answerDAO.getMaxAddrId();
	}


	@Override
	public void updateEstimates(HashMap<String, Integer> map) {
		
		answerDAO.updateEstimates(map);
	}

		

	

}
