package com.itwillbs.domain;

public class ProEstimateDTO {
private int estimates_id,pro_id,account_id;
private String content;

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}

public int getEstimates_id() {
	return estimates_id;
}

public void setEstimates_id(int estimates_id) {
	this.estimates_id = estimates_id;
}

public int getPro_id() {
	return pro_id;
}

public void setPro_id(int pro_id) {
	this.pro_id = pro_id;
}

public int getAccount_id() {
	return account_id;
}

public void setAccount_id(int account_id) {
	this.account_id = account_id;
}
}
