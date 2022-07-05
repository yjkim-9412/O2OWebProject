package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.EstimatesDTO;

public interface EstimatesDAO{
	
	public List<EstimatesDTO> getEstimatesId(EstimatesDTO estimatesDTO);
}
