package com.itwillbs.domain;

public class GetAnswersDTO {
	private int ques_id;
	private String ques_contents;
	private int ans_id;
	private String ans_contents;

	public int getQues_id() {
		return ques_id;
	}

	public void setQues_id(int ques_id) {
		this.ques_id = ques_id;
	}

	public String getQues_contents() {
		return ques_contents;
	}

	public void setQues_contents(String ques_contents) {
		this.ques_contents = ques_contents;
	}

	public int getAns_id() {
		return ans_id;
	}

	public void setAns_id(int ans_id) {
		this.ans_id = ans_id;
	}

	public String getAns_contents() {
		return ans_contents;
	}

	public void setAns_contents(String ans_contents) {
		this.ans_contents = ans_contents;
	}

	@Override
	public String toString() {
		return "GetAnswersDTO [ques_id=" + ques_id + ", ques_contents=" + ques_contents + ", ans_id=" + ans_id
				+ ", ans_contents=" + ans_contents + "]";
	}
	
	

}
