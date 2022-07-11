package com.itwillbs.domain;

public class GetQuestionsDTO {
	private int ques_id;
	private int services_id;
	private String service_name;
	private String ques_contents;
	
	public int getQues_id() {
		return ques_id;
	}
	public void setQues_id(int ques_id) {
		this.ques_id = ques_id;
	}
	public int getServices_id() {
		return services_id;
	}
	public void setServices_id(int services_id) {
		this.services_id = services_id;
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
	@Override
	public String toString() {
		return "GetQuestions [ques_id=" + ques_id + ", services_id=" + services_id + ", service_name=" + service_name
				+ ", ques_contents=" + ques_contents + "]";
	}
	
	
}
