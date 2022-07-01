package com.itwillbs.domain;

public class AnswerDTO {
	private int id;
	private int questions_id;
	private String contents;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQuestions_id() {
		return questions_id;
	}
	public void setQuestions_id(int questions_id) {
		this.questions_id = questions_id;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	@Override
	public String toString() {
		return contents;
	}
	
	
}
