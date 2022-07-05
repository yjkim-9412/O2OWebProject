package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.EstimatesDAO;
import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;

@Service
public class EstimatesServiceImpl implements EstimatesService{
	
	@Inject
	private EstimatesDAO estimatesDAO;

	@Override
	public List<EstimatesDTO> getEstimatesId(EstimatesDTO estimatesDTO) {
		
		return estimatesDAO.getEstimatesId(estimatesDTO);
	}

	@Override
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id) {
		
		return estimatesDAO.getEstimatesMid(estimates_id);
	}

	
	
	
}
