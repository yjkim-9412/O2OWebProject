package com.itwillbs.dao;

import com.itwillbs.domain.ReviewDTO;

public interface ReviewDAO {
	//추상메서드 정의
		 public void insertReviews(ReviewDTO reviewDTO);

		 public int getMaxId();
}
