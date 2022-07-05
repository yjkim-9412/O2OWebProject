package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;

public interface EstimatesDAO{
	
	public List<EstimatesDTO> getEstimatesId(EstimatesDTO estimatesDTO);
	
	public List<EstimatesMidDTO> getEstimatesMid(int estimates_id);
}
