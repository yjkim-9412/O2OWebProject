package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;


public class GetProDTO {
	private int id,career,employee_number;
	private String name,email,phone,city_name,district_name,addistrict_name,maincat_name,seccat_name,service_name;
	private double x_axis,y_axis;
	private Timestamp date;
	private Boolean identify,business,certificate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCareer() {
		return career;
	}

	public void setCareer(int career) {
		this.career = career;
	}

	public int getEmployee_number() {
		return employee_number;
	}

	public void setEmployee_number(int employee_number) {
		this.employee_number = employee_number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public String getDistrict_name() {
		return district_name;
	}

	public void setDistrict_name(String district_name) {
		this.district_name = district_name;
	}

	public String getAddistrict_name() {
		return addistrict_name;
	}

	public void setAddistrict_name(String addistrict_name) {
		this.addistrict_name = addistrict_name;
	}

	public String getMaincat_name() {
		return maincat_name;
	}

	public void setMaincat_name(String maincat_name) {
		this.maincat_name = maincat_name;
	}

	public String getSeccat_name() {
		return seccat_name;
	}

	public void setSeccat_name(String seccat_name) {
		this.seccat_name = seccat_name;
	}

	public String getService_name() {
		return service_name;
	}

	public void setService_name(String service_name) {
		this.service_name = service_name;
	}

	public double getX_axis() {
		return x_axis;
	}

	public void setX_axis(double x_axis) {
		this.x_axis = x_axis;
	}

	public double getY_axis() {
		return y_axis;
	}

	public void setY_axis(double y_axis) {
		this.y_axis = y_axis;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Boolean getIdentify() {
		return identify;
	}

	public void setIdentify(Boolean identify) {
		this.identify = identify;
	}

	public Boolean getBusiness() {
		return business;
	}

	public void setBusiness(Boolean business) {
		this.business = business;
	}

	public Boolean getCertificate() {
		return certificate;
	}

	public void setCertificate(Boolean certificate) {
		this.certificate = certificate;
	}
}
