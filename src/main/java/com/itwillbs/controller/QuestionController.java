package com.itwillbs.controller;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.CityDTO;
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
	
	@RequestMapping(value = "/category/health", method = RequestMethod.GET)
	public String health() {
		
		return "category/health";
	}
	
	@RequestMapping(value = "/category/event", method = RequestMethod.GET)
	public String event() {
		
		return "category/event";
	}
	
	@RequestMapping(value = "/category/cleaning", method = RequestMethod.GET)
	public String cleaning() {
		
		return "category/cleaning";
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

		return "category/sec_category/language";
		
	}
	
	@RequestMapping(value = "/category/sec_category/music", method = RequestMethod.GET)
	public String music(Integer services_id1, Model model) {
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
		
		return "category/sec_category/music";
		
	}
	
	@RequestMapping(value = "/category/sec_category/delivery", method = RequestMethod.GET)
	public String delivery(Integer services_id1, Model model) {
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
		
		return "category/sec_category/delivery";
		
	}
	
	@RequestMapping(value = "/category/sec_category/exercise", method = RequestMethod.GET)
	public String exercise(Integer services_id1, Model model) {
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
		
		return "category/sec_category/exercise";
		
	}
	
	@RequestMapping(value = "/category/sec_category/party", method = RequestMethod.GET)
	public String party(Integer services_id1, Model model) {
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
		
		return "category/sec_category/party";
		
	}
	
	@RequestMapping(value = "/category/sec_category/mc", method = RequestMethod.GET)
	public String mc(Integer services_id1, Model model) {
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
		
		return "category/sec_category/mc";
		
	}
	
	@RequestMapping(value = "/category/sec_category/video", method = RequestMethod.GET)
	public String video(Integer services_id1, Model model) {
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
		
		return "category/sec_category/video";
		
	}
	
	@RequestMapping(value = "/category/sec_category/aircon", method = RequestMethod.GET)
	public String aircon(Integer services_id1, Model model) {
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
		
		return "category/sec_category/aircon";
		
	}
	
	@RequestMapping(value = "/category/sec_category/mold", method = RequestMethod.GET)
	public String mold(Integer services_id1, Model model) {
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
		
		return "category/sec_category/mold";
		
	}
	
	@RequestMapping(value = "/category/sec_category/move", method = RequestMethod.GET)
	public String move(Integer services_id1, Model model) {
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
		
		return "category/sec_category/move";
		
	}
	
	@RequestMapping(value = "/category/sec_category/bed", method = RequestMethod.GET)
	public String bed(Integer services_id1, Model model) {
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
		
		return "category/sec_category/bed";
		
	}
}
