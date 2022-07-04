package com.itwillbs.controller;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ServiceDTO;
import com.itwillbs.service.QuestionService;

@Controller
public class QuestionController {
	
	@Inject
	private QuestionService questionService;

	@RequestMapping(value = "/category/lesson", method = RequestMethod.GET)
	public String lesson() {
		
		return "category/lesson";
	}
	
	@RequestMapping(value = "/category/sec_category/pt", method = RequestMethod.GET)
	public String pt(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		ServiceDTO serviceDTO = questionService.getServiceName(services_id);
		System.out.println("서비스 이름 : " + serviceDTO.getName());
		
		List<String> questions = questionService.getQuestions(services_id);
		List<Integer> questions_id = questionService.getQuestions_id(services_id);
		
		System.out.println(questions);
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
			
		}
	
		model.addAttribute("questions_id", questions_id);
		model.addAttribute("questions", questions);
		model.addAttribute("answers", answers);
		model.addAttribute("serviceDTO", serviceDTO);
		
		System.out.println(answers);
		
		return "category/sec_category/pt";
		
	}
	
	@RequestMapping(value = "/category/sec_category/language", method = RequestMethod.GET)
	public String language(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<String> questions = questionService.getQuestions(services_id);
		List<Integer> questions_id = questionService.getQuestions_id(services_id);
		System.out.println(questions);
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
			
		}
		
		model.addAttribute("questions_id", questions_id);
		model.addAttribute("questions", questions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);

		return "category/sec_category/language";
		
	}
	
	@RequestMapping(value = "/category/sec_category/music", method = RequestMethod.GET)
	public String music(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<String> questions = questionService.getQuestions(services_id);
		List<Integer> questions_id = questionService.getQuestions_id(services_id);
		System.out.println(questions);
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
			
		}
		
		model.addAttribute("questions_id", questions_id);
		model.addAttribute("questions", questions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);
		
		return "category/sec_category/music";
		
	}
	
}
