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
    public String selectproprofile(HttpServletRequest request, Model model) {

		int pageSize=10;
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null){
			pageNum="1";
		}
		PageDTO pageDTO=new PageDTO();
		pageDTO.setPro_id(1);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);

		List<ReviewDTO> reviewList=reviewService.getallReviews(pageDTO);
		if (reviewList != null) {
			for (ReviewDTO reviewDTO : reviewList) {
				System.out.println(reviewDTO.getComment());
			}
		}

		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int count=reviewService.getReviewCount(pageDTO.getPro_id());
		double avg=reviewService.getreviewavg(pageDTO.getPro_id());
		double roundavg=Math.round(avg);
		int pageBlock=10;
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount= count/pageSize+ (count%pageSize==0?0:1);
		if(endPage > pageCount){
			endPage=pageCount;
		}
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);

		model.addAttribute("reviewList",reviewList);
		model.addAttribute("pageDTO",pageDTO);
		model.addAttribute("count", count);
		model.addAttribute("avg",avg);
		model.addAttribute("roundavg",roundavg);


        return "pro/proprofile";
    }





}
