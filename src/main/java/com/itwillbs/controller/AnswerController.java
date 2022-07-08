package com.itwillbs.controller;


import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.service.AnswerService;

@Controller
public class AnswerController {
	
	@Inject
	private AnswerService answerService;
	
	@RequestMapping(value = "/category/result1", method = RequestMethod.GET)
	public String result1(HttpSession session, HttpServletRequest request) {
	
		int account_id = (int)session.getAttribute("id");
		answerService.insertEstimates(account_id);
		
		System.out.println("session id : " + account_id);
		int estimates_id = answerService.getEstimates_id();
		
		System.out.println("estimates_id : " + estimates_id);
		
		EstimatesMidDTO estimatesMidDTO = new EstimatesMidDTO();
		int question_id = 0, answer_id = 0;
		
		for(int i = 1; i <= 5; i++) {
			String[] ans = request.getParameterValues("ans" + i);
			
			question_id = Integer.parseInt(ans[0]);
			String content = ans[1];
				
			AnswerDTO answerDTO = new AnswerDTO();
			answerDTO.setQuestions_id(question_id);
			answerDTO.setContents(content);
			
			answerDTO = answerService.getAnswer_id(answerDTO);
			
			answer_id = answerDTO.getId();
			
			System.out.println("question_id : " + ans[0] + ", answer_id : " + answer_id + ", content : " + ans[1]);
			
			estimatesMidDTO.setEstimates_id(estimates_id);
			estimatesMidDTO.setQuestion_id(question_id);
			estimatesMidDTO.setAnswer_id(answer_id);
			
			answerService.insertEstimatesMid(estimatesMidDTO);
			
		}
		
		String jibunAddress = request.getParameter("jibunAddress");
		String[] address = jibunAddress.split(" ");

		String city = address[0];
		String district = address[1];
		String addistrict = address[2];
		CityDTO cityDTO = answerService.getCityId(city);
		int city_id = cityDTO.getId();
		DistrictDTO districtDTO = new DistrictDTO();
		districtDTO.setCity_id(city_id);
		districtDTO.setName(district);
//		DistrictDTO districtDTO = answerService.getDistrictsId(cityDTO);
//		System.out.println(district + districtDTO.getId());
//		System.out.println(districts_id);
//		int addistricts_id = answerService.getAddistrictsId(addistrict);
//		System.out.println("도시 이름 : " + city + ", 구 이름 : " + district + ", 동 이름 : " + addistrict);
//		System.out.println("도시 아이디 : " + cities_id + ", 구 아이디 : " + districts_id + ", 동 아이디 : " + addistricts_id);
		
		return "category/result";
	}
	
	@RequestMapping(value = "/category/result2", method = RequestMethod.GET)
	public String result2(HttpSession session, HttpServletRequest request) {
	
		int account_id = (int)session.getAttribute("id");
		answerService.insertEstimates(account_id);
		
		System.out.println("session id : " + account_id);
		int estimates_id = answerService.getEstimates_id();
		
		System.out.println("estimates_id : " + estimates_id);
		
		EstimatesMidDTO estimatesMidDTO = new EstimatesMidDTO();
		int question_id = 0, answer_id = 0;
		
		for(int i = 1; i <= 4; i++) {
			String[] ans = request.getParameterValues("ans" + i);
			
			question_id = Integer.parseInt(ans[0]);
			String content = ans[1];
				
			AnswerDTO answerDTO = new AnswerDTO();
			answerDTO.setQuestions_id(question_id);
			answerDTO.setContents(content);
			
			answerDTO = answerService.getAnswer_id(answerDTO);
			
			answer_id = answerDTO.getId();
			
			System.out.println("question_id : " + ans[0] + ", answer_id : " + answer_id + ", content : " + ans[1]);
			
			estimatesMidDTO.setEstimates_id(estimates_id);
			estimatesMidDTO.setQuestion_id(question_id);
			estimatesMidDTO.setAnswer_id(answer_id);
			
			answerService.insertEstimatesMid(estimatesMidDTO);
			
		}
		
		return "category/result";
	}
	
	@RequestMapping(value = "/category/result3", method = RequestMethod.GET)
	public String result3(HttpSession session, HttpServletRequest request) {
	
		int account_id = (int)session.getAttribute("id");
		answerService.insertEstimates(account_id);
		
		System.out.println("session id : " + account_id);
		int estimates_id = answerService.getEstimates_id();
		
		System.out.println("estimates_id : " + estimates_id);
		
		EstimatesMidDTO estimatesMidDTO = new EstimatesMidDTO();
		int question_id = 0, answer_id = 0;
		
			String[] ans = request.getParameterValues("ans1");
			
			question_id = Integer.parseInt(ans[0]);
			String content = ans[1];
				
			AnswerDTO answerDTO = new AnswerDTO();
			answerDTO.setQuestions_id(question_id);
			answerDTO.setContents(content);
			
			answerDTO = answerService.getAnswer_id(answerDTO);
			
			answer_id = answerDTO.getId();
			
			System.out.println("question_id : " + ans[0] + ", answer_id : " + answer_id + ", content : " + ans[1]);
			
			estimatesMidDTO.setEstimates_id(estimates_id);
			estimatesMidDTO.setQuestion_id(question_id);
			estimatesMidDTO.setAnswer_id(answer_id);
			
			answerService.insertEstimatesMid(estimatesMidDTO);
		
		return "category/result";
	}
}
