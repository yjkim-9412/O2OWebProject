package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.EstimatesDTO;

@Repository
public class EstimatesDAOImpl implements EstimatesDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.estimates.EstimatesMapper";

	@Override
	public List<EstimatesDTO> getEstimatesId(EstimatesDTO estimatesDTO) {
		
		return sqlSession.selectList(namespace+".getEstimatesId", estimatesDTO);
	}
	
	
	
	
}
