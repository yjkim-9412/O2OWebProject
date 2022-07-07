package com.itwillbs.domain;

public class QuestionDTO {
	private int id;
	private int services_id;
	private String contents;
	private AnswerDTO answerDTO;
	
	public AnswerDTO getAnswerDTO() {
		return answerDTO;
	}
	public void setAnswerDTO(AnswerDTO answerDTO) {
		this.answerDTO = answerDTO;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getServices_id() {
		return services_id;
	}
	public void setServices_id(int services_id) {
		this.services_id = services_id;
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
