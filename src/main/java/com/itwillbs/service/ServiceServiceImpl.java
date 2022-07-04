package com.itwillbs.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ServiceDAO;

@Service
public class ServiceServiceImpl implements ServiceService{
	
	@Inject
	private ServiceDAO serviceDAO;

	@Override
	public String getServiceName(int services_id) {
		
		return serviceDAO.getServiceName(services_id);
	}
	
	
}
