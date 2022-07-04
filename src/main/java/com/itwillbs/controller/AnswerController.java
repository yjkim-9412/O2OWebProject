package com.itwillbs.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.ServiceDTO;
import com.itwillbs.service.AnswerService;

@Controller
public class AnswerController {
	
	@Inject
	private AnswerService answerService;
	
	@RequestMapping(value = "/category/result", method = RequestMethod.GET)
	public String result(HttpSession session, HttpServletRequest request) {
	
		int account_id = (int)session.getAttribute("id");
//		answerService.insertEstimates(account_id);
		
		System.out.println("session id : " + account_id);
		ServiceDTO serviceDTO = answerService.getEstimates_id(account_id);
		
		int estimates_id = serviceDTO.getId();
		System.out.println("estimates_id : " + estimates_id);
		
		for(int i = 1; i < 5; i++) {
			String[] ans = request.getParameterValues("ans" + i);
			int question_id = Integer.parseInt(ans[0]);
			String content = ans[1];
			
			System.out.println("question_id : " + ans[0] + " content : " + ans[1]);
			
			AnswerDTO answerDTO = new AnswerDTO();
			answerDTO.setQuestions_id(question_id);
			answerDTO.setContents(content);
			
			answerDTO = answerService.getAnswer_id(answerDTO);
			System.out.println("answer_id : " + answerDTO.getId());
		
//			answerService.insertEstimates_id(estimates_id);
			
		}
		
		
		
		
		
//			answerService.insertAnswer(answerDTO);
		
		return "category/result";
	}
}
