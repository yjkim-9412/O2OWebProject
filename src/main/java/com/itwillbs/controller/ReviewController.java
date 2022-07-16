package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.ReviewService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReviewController {
		
	
	
	@Inject
	private ReviewService reviewService;
	
	@RequestMapping(value = "/pro/writereviews", method = RequestMethod.GET)
    public String write() {
        return "pro/writereviews";
    }
	




	@RequestMapping(value = "/pro/insertPro", method = RequestMethod.GET)
	public String writePro(ReviewDTO reviewDTO) {
		System.out.println("rating : "+reviewDTO.getRating());
		reviewService.insertReviews(reviewDTO);
		
		return "redirect:/pro/proprofile";
	}

	@RequestMapping(value = "/pro/proprofile", method = RequestMethod.GET)
    public String selectproprofile(HttpServletRequest request, Model model, @RequestParam(value = "num",required = false)String num){

		int pro_id=Integer.parseInt(num);
		if(pro_id!=0){
			ReviewDTO reviewDTO= new ReviewDTO();
			List<ReviewDTO> reviewList=reviewService.getallReviews(pro_id);
			if (reviewList != null) {
				for (ReviewDTO reviewDTO1 : reviewList) {
					System.out.println(reviewDTO1.getPro_id());
				}
			}
			reviewDTO.setPro_id(pro_id);

			int count=reviewService.getReviewCount(reviewDTO.getPro_id());
			double avg=reviewService.getreviewavg(reviewDTO.getPro_id());
			double roundavg=Math.round(avg);

			model.addAttribute("reviewList",reviewList);

			model.addAttribute("count", count);
			model.addAttribute("avg",avg);
			model.addAttribute("roundavg",roundavg);
		}

        return "pro/proprofile";
    }
	
	





}
