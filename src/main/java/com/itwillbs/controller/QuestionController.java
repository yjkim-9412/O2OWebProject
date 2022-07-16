package com.itwillbs.controller;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.GetQuestionsDTO;
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


	@RequestMapping(value = "/category/sec_category", method = RequestMethod.GET)
	public String sec_category(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();


			List<GetQuestionsDTO> getQuestions = questionService.getQuestions(services_id);
			for (int i = 0; i < getQuestions.size(); i++) {
				System.out.println(getQuestions.get(i));
			}

			List<Integer> questions_id = new ArrayList<Integer>();
			for (int i = 0; i < getQuestions.size(); i++) {
				questions_id.add(getQuestions.get(i).getQues_id());
			}
			System.out.println(questions_id);

			List<List<String>> answers = new ArrayList<>();

			for (int i = 0; i < questions_id.size(); i++) {
				int question_id = questions_id.get(i).intValue();

				List<String> answerList = questionService.getAnswers(question_id);

				answers.add(answerList);
			}

			model.addAttribute("questions", getQuestions);
			model.addAttribute("answers", answers);

			System.out.println(answers);
		if(services_id == 1 || services_id == 2 || services_id == 3) {
			return "category/sec_category/pt";
		}else if(services_id == 20 || services_id == 21 || services_id == 22) {
			return "category/sec_category/language";
		}else if(services_id == 7 || services_id == 8 || services_id == 9 || services_id == 10|| services_id == 11|| services_id == 12) {
			return "category/sec_category/music";
		}else if(services_id == 56 || services_id == 57) {
			return "category/sec_category/delivery";
		}else if(services_id == 6 || services_id == 16 || services_id == 17 || services_id == 18 || services_id == 19) {
			return "category/sec_category/exercise";
		}else if(services_id == 45 || services_id == 46 || services_id == 47 || services_id == 48|| services_id == 49) {
			return "category/sec_category/party";
		}else if(services_id == 39 || services_id == 40 || services_id == 41 || services_id == 42|| services_id == 43) {
			return "category/sec_category/mc";
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/category/sec_category/video", method = RequestMethod.GET)
	public String video(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<GetQuestionsDTO> getQuestions = questionService.getQuestions(services_id);
		for(int i = 0; i < getQuestions.size(); i++) {
			System.out.println(getQuestions.get(i));
		}
		
		List<Integer> questions_id = new ArrayList<Integer>();
		for(int i = 0; i < getQuestions.size(); i++) {
			questions_id.add(getQuestions.get(i).getQues_id());
		}
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
		}
		
		model.addAttribute("questions", getQuestions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);
		
		return "category/sec_category/video";
		
	}
	
	@RequestMapping(value = "/category/sec_category/aircon", method = RequestMethod.GET)
	public String aircon(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<GetQuestionsDTO> getQuestions = questionService.getQuestions(services_id);
		for(int i = 0; i < getQuestions.size(); i++) {
			System.out.println(getQuestions.get(i));
		}
		
		List<Integer> questions_id = new ArrayList<Integer>();
		for(int i = 0; i < getQuestions.size(); i++) {
			questions_id.add(getQuestions.get(i).getQues_id());
		}
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
		}
		
		model.addAttribute("questions", getQuestions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);
		
		return "category/sec_category/aircon";
		
	}
	
	@RequestMapping(value = "/category/sec_category/mold", method = RequestMethod.GET)
	public String mold(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<GetQuestionsDTO> getQuestions = questionService.getQuestions(services_id);
		for(int i = 0; i < getQuestions.size(); i++) {
			System.out.println(getQuestions.get(i));
		}
		
		List<Integer> questions_id = new ArrayList<Integer>();
		for(int i = 0; i < getQuestions.size(); i++) {
			questions_id.add(getQuestions.get(i).getQues_id());
		}
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
		}
		
		model.addAttribute("questions", getQuestions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);
		
		return "category/sec_category/mold";
		
	}
	
	@RequestMapping(value = "/category/sec_category/move", method = RequestMethod.GET)
	public String move(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<GetQuestionsDTO> getQuestions = questionService.getQuestions(services_id);
		for(int i = 0; i < getQuestions.size(); i++) {
			System.out.println(getQuestions.get(i));
		}
		
		List<Integer> questions_id = new ArrayList<Integer>();
		for(int i = 0; i < getQuestions.size(); i++) {
			questions_id.add(getQuestions.get(i).getQues_id());
		}
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
		}
		
		model.addAttribute("questions", getQuestions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);
		
		return "category/sec_category/move";
		
	}
	
	@RequestMapping(value = "/category/sec_category/bed", method = RequestMethod.GET)
	public String bed(Integer services_id1, Model model) {
		int services_id = services_id1.intValue();
		
		List<GetQuestionsDTO> getQuestions = questionService.getQuestions(services_id);
		for(int i = 0; i < getQuestions.size(); i++) {
			System.out.println(getQuestions.get(i));
		}
		
		List<Integer> questions_id = new ArrayList<Integer>();
		for(int i = 0; i < getQuestions.size(); i++) {
			questions_id.add(getQuestions.get(i).getQues_id());
		}
		System.out.println(questions_id);
		
		List<List<String>> answers = new ArrayList<>();
		
		for(int i = 0; i < questions_id.size(); i++) {
			int question_id = questions_id.get(i).intValue();
			
			List<String> answerList = questionService.getAnswers(question_id);
			
				answers.add(answerList);				
		}
		
		model.addAttribute("questions", getQuestions);
		model.addAttribute("answers", answers);
		
		System.out.println(answers);
		
		return "category/sec_category/bed";
		
	}
}
