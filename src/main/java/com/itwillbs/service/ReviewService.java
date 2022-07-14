package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ReviewDTO;

public interface ReviewService {
	
	public void insertReviews(ReviewDTO reviewDTO);

	public List<ReviewDTO> getallReviews( PageDTO pageDTO);

	public int getReviewCount(int pro_id);

	public double getreviewavg(int pro_id);
	
	public List<ReviewDTO> getratingfive();
	
	public double getAllreviewavg();
	
	public int getAllreviewcount(); 
}
