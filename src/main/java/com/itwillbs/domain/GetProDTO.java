package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
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
	

	
}
