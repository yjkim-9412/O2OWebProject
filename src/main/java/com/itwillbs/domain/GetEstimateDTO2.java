package com.itwillbs.domain;

public class GetEstimateDTO2 {
	private int account_id;
	private int estimates_id;
	private int question_id;
	private int services_id;
	private String service_name;
	private String ques_contents;
	private int answer_id;
	private String ans_contents;
	
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
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
	public int getServices_id() {
		return services_id;
	}
	public void setServices_id(int services_id) {
		this.services_id = services_id;
	}
	public int getAnswer_id() {
		return answer_id;
	}
	public void setAnswer_id(int answer_id) {
		this.answer_id = answer_id;
	}
	
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public String getQues_contents() {
		return ques_contents;
	}
	public void setQues_contents(String ques_contents) {
		this.ques_contents = ques_contents;
	}
	public String getAns_contents() {
		return ans_contents;
	}
	public void setAns_contents(String ans_contents) {
		this.ans_contents = ans_contents;
	}
	@Override
	public String toString() {
		return "GetEstimateDTO2 [account_id=" + account_id + ", estimates_id=" + estimates_id + ", question_id="
				+ question_id + ", services_id=" + services_id + ", service_name=" + service_name + ", ques_contents="
				+ ques_contents + ", answer_id=" + answer_id + ", ans_contents=" + ans_contents + "]";
	}

	
}
