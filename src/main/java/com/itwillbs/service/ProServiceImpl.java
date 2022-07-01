package com.itwillbs.service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.dao.ProDAO;
import com.itwillbs.domain.ProDTO;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class ProServiceImpl implements ProService {
	
	@Inject
	private ProDAO proDAO;
	
    @Override
    public void insertPro(ProDTO proDTO) {

    }

	@Override
	public ProDTO proCheck() {
		System.out.println("ProServiceImpl proCheck()");
		return proDAO.proCheck();
	}

//	@Override
//	public ProDTO proCheck(ProDTO proDTO) {
//		
//		return proDAO.proCheck(proDTO);
//	}


}
