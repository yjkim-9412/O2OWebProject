package com.itwillbs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.QuestionDTO;
import com.itwillbs.service.EstimatesService;

@Controller
public class EstimatesController {
	
	@Inject
	private EstimatesService estimatesService;
	
	@RequestMapping(value = "/requests/sent", method = RequestMethod.GET)
	public String request(HttpSession session, Model model) {
		
		int account_id = (int)session.getAttribute("id");
		
		EstimatesDTO estimatesDTO = new EstimatesDTO();
		estimatesDTO.setAccount_id(account_id);
		
		List<EstimatesDTO> estimatesList =  estimatesService.getEstimatesId(estimatesDTO);
		List<List<String>> quesList = new ArrayList();
		
		for(int i = 0; i < estimatesList.size(); i++) {
			
			int estimates_id = estimatesList.get(i).getId();
			System.out.println("estimates_id : " + estimates_id);
			
			List<EstimatesMidDTO> estimatesMid = estimatesService.getEstimatesMid(estimates_id);
			ArrayList<Integer> quesIdList = new ArrayList<>();
			ArrayList<Integer> ansIdList = new ArrayList<>();
			
			for(int j = 0; j < estimatesMid.size(); j++) {
				quesIdList.add(estimatesMid.get(j).getQuestion_id());
				ansIdList.add(estimatesMid.get(j).getAnswer_id());
			}
			
			System.out.println("질문 번호 : " + quesIdList);
			
			List<String> questions = new ArrayList<>();
			for(int k = 0; k < quesIdList.size(); k++) {
				int que_id = quesIdList.get(k);
				QuestionDTO question = estimatesService.getQuestion(que_id);
				questions.add(question.getContents());				
			}
			System.out.println(questions);
			quesList.add(questions);
			
			
			
			System.out.println("응답 번호 : " + ansIdList);
			
		}
		
		System.out.println(quesList);
		model.addAttribute("quesList", quesList);
		model.addAttribute("estimatesList", estimatesList);
		
		return "requests/sent";
	}
}
