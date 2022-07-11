package com.itwillbs.dao;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ReviewDTO;

import java.util.List;

public interface ReviewDAO {
	//추상메서드 정의
		 public void insertReviews(ReviewDTO reviewDTO);

		 public List<ReviewDTO> getallReviews(PageDTO pageDTO);

		 public int getReviewCount(int pro_id);

		public double getreviewavg(int pro_id);
}
