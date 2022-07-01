package com.itwillbs.controller;


import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.QuestionDTO;
import com.itwillbs.service.QuestionService;

@Controller
public class QuestionController {
	
	@Inject
	private QuestionService questionService;
	
	@RequestMapping(value = "/category/lesson", method = RequestMethod.GET)
	public String lesson() {
		
		return "category/lesson";
	}
	
	@RequestMapping(value = "/category/questions", method = RequestMethod.GET)
	public String estimates(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<String> questions = questionService.getQuestions(services_id);
		List<Integer> questions_id = questionService.getQuestions_id(services_id);
		System.out.println(questions);
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();

			answers.add(questionService.getAnswers(question_id));

		}
	
		model.addAttribute("questions", questions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);
		for(int i = 0; i < answers.size(); i++) {
			
			System.out.println(answers.get(i));
		}
		
		
		return "category/questions";
		
	}
	
}
