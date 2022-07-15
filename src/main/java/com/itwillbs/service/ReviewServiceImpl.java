package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.itwillbs.domain.PageDTO;
import org.springframework.stereotype.Service;

import com.itwillbs.dao.ReviewDAO;
import com.itwillbs.domain.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	
	
	@Inject
	private ReviewDAO reviewDAO;
	
	
	@Override

	public void insertReviews(ReviewDTO reviewDTO) {
		System.out.println("ReviewServiceImpl insertReview()");

		reviewDAO.insertReviews(reviewDTO);
	}

	@Override
	public List<ReviewDTO> getallReviews(PageDTO pageDTO) {
		return reviewDAO.getallReviews(pageDTO);
	}

	@Override
	public int getReviewCount(int pro_id) {
		return reviewDAO.getReviewCount(pro_id);
	}

	@Override
	public double getreviewavg(int pro_id) {
		return reviewDAO.getreviewavg(pro_id);
	}

	@Override
	public List<ReviewDTO> getratingfive() {
		return reviewDAO.getratingfive();
	}

	@Override
	public double getAllreviewavg() {
		return reviewDAO.getAllreviewavg();
	}

	@Override
	public int getAllreviewcount() {
		return reviewDAO.getAllreviewcount();
	}



	@Override
	public List<ReviewDTO> getpronameservice() {
		return reviewDAO.getpronameservice();
	}
}
