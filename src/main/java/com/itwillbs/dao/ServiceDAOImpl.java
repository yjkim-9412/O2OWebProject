package com.itwillbs.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceDAOImpl implements ServiceDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.service.serviceMapper";

	@Override
	public String getServiceName(int services_id) {
	
		return sqlSession.selectOne(namespace+".getServiceName", services_id);
	
	}
}
