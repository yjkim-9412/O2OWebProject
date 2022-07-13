package com.itwillbs.domain;

public class ProEstimatesDTO {
	private int id;
	private int estimates_id;
	private int pro_id;
	private int price;
	private int selected;

	private int account_id;

	public String getService_name() {
		return service_name;
	}

	public void setService_name(String service_name) {
		this.service_name = service_name;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	private String content,service_name,pro_name;
	
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
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSelected() {
		return selected;
	}
	public void setSelected(int selected) {
		this.selected = selected;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ProEstimatesDTO [id=" + id + ", estimates_id=" + estimates_id + ", pro_id=" + pro_id + ", price="
				+ price + ", selected=" + selected + ", account_id=" + account_id + ", content=" + content + "]";
	}
	
	
}
