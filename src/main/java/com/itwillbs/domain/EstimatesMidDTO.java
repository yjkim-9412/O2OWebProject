package com.itwillbs.domain;

import java.sql.Timestamp;

public class EstimatesMidDTO {
	
	private int id;
	private int estimates_id;
	private int question_id;
	private int answer_id;
	private Timestamp date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEstimates_id() {
		return estimates_id;
	}
	public void setEstimates_id(int estimates_id) {
		this.estimates_id = estimates_id;
	}
	public int getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}
	public int getAnswer_id() {
		return answer_id;
	}
	public void setAnswer_id(int answer_id) {
		this.answer_id = answer_id;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
}
