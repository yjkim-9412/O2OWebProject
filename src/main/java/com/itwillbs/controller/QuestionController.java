package com.itwillbs.controller;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.service.QuestionService;

@Controller
public class QuestionController {
	
	@Inject
	private QuestionService questionService;
	
	@RequestMapping(value = "/category/lesson", method = RequestMethod.GET)
	public String lesson() {
		
		return "category/lesson";
	}
	
	@RequestMapping(value = "/category/estimates", method = RequestMethod.GET)
	public String estimates(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<String> questions = questionService.getQuestions(services_id);
		
		model.addAttribute("questions", questions);

		
		return "category/estimates";
		
	}
	
}
