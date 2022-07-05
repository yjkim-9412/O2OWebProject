package com.itwillbs.domain;

import org.springframework.stereotype.Repository;

@Repository
public class AddressDTO {
private int id,city_id,addistrict_id,district_id;
private String addressdetail;
private double x_axis,y_axis;

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
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getCity_id() {
	return city_id;
}
public void setCity_id(int city_id) {
	this.city_id = city_id;
}
public int getAddistrict_id() {
	return addistrict_id;
}
public void setAddistrict_id(int addistrict_id) {
	this.addistrict_id = addistrict_id;
}
public int getDistrict_id() {
	return district_id;
}
public void setDistrict_id(int district_id) {
	this.district_id = district_id;
}
public String getAddressdetail() {
	return addressdetail;
}
public void setAddressdetail(String addresssdetail) {
	this.addressdetail = addresssdetail;
}
}
