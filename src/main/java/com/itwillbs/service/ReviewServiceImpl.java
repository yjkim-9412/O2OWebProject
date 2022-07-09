package com.itwillbs.service;

import java.sql.Timestamp;

import javax.inject.Inject;

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
		
		reviewDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		if(reviewDTO.getId()==0) {
			reviewDTO.setId(1);
		}else {
			reviewDTO.setId(reviewDAO.getMaxId()+1);
		}
		
		reviewDAO.insertReviews(reviewDTO);
	}
	
	
}
