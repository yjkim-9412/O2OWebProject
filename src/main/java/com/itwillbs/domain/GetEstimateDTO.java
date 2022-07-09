package com.itwillbs.domain;

public class GetEstimateDTO {
private int estimates_id,question_id,answer_id,services_id,pro_id,address_id,account_id;
private  String account_name; 
public String getAccount_name() {
	return account_name;
}
public void setAccount_name(String account_name) {
	this.account_name = account_name;
}
public int getPro_id() {
	return pro_id;
}
public void setPro_id(int pro_id) {
	this.pro_id = pro_id;
}
public int getAddress_id() {
	return address_id;
}
public void setAddress_id(int address_id) {
	this.address_id = address_id;
}
public int getAccount_id() {
	return account_id;
}
public void setAccount_id(int account_id) {
	this.account_id = account_id;
}
private String question_cont,answer_cont;
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
public int getServices_id() {
	return services_id;
}
public void setServices_id(int services_id) {
	this.services_id = services_id;
}
public String getQuestion_cont() {
	return question_cont;
}
public void setQuestion_cont(String question_cont) {
	this.question_cont = question_cont;
}
public String getAnswer_cont() {
	return answer_cont;
}
public void setAnswer_cont(String answer_cont) {
	this.answer_cont = answer_cont;
}
}
