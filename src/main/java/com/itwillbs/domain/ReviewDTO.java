package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
public class ReviewDTO {
	private int id;
	private int account_id;
	private int pro_id;
	private String comment;
	private String date;
	private int rating;
	private String name;

}
