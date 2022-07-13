package com.itwillbs.domain;

public class ProEstimatesDTO {
	private int proEstimates_id;
	private int estimates_id;
	private int pro_id;

	private String pro_name;
	private int price;
	private int selected;
	private int account_id;
	private String content;

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

	public int getProEstimates_id() {
		return proEstimates_id;
	}

	public void setProEstimates_id(int proEstimates_id) {
		this.proEstimates_id = proEstimates_id;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	@Override
	public String toString() {
		return "ProEstimatesDTO{" +
				"proEstimates_id=" + proEstimates_id +
				", estimates_id=" + estimates_id +
				", pro_id=" + pro_id +
				", pro_name='" + pro_name + '\'' +
				", price=" + price +
				", selected=" + selected +
				", account_id=" + account_id +
				", content='" + content + '\'' +
				'}';
	}
}
