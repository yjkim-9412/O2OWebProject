package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.service.EstimatesService;

@Controller
public class EstimatesController {
	
	@Inject
	private EstimatesService estimatesService;
	
	@RequestMapping(value = "/requests/sent", method = RequestMethod.GET)
	public String request(HttpSession session) {
		
		int account_id = (int)session.getAttribute("id");
		
		EstimatesDTO estimatesDTO = new EstimatesDTO();
		estimatesDTO.setAccount_id(account_id);
		
		List<EstimatesDTO> estimatesList =  estimatesService.getEstimatesId(estimatesDTO);
		
		for(int i = 0; i < estimatesList.size(); i++) {
			System.out.println("estimates_id : " + estimatesList.get(i).getId());
		}
		
		
		
		
		return "requests/sent";
	}
}
