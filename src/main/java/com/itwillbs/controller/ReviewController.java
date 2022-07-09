package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.ReviewService;

@Controller
public class ReviewController {
		
	
	
	@Inject
	private ReviewService reviewService;
	
	@RequestMapping(value = "/reviews/writereviews", method = RequestMethod.GET)
    public String insert() {
        return "reviews/writereviews";
    }
	
	@RequestMapping(value = "/reviews/insertPro", method = RequestMethod.POST)
	public String writePro(ReviewDTO reviewDTO) {
		reviewService.insertReviews(reviewDTO);
		
		return "redirect:/";
	}
	
}
