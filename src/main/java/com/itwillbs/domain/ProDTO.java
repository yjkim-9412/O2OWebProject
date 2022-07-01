package com.itwillbs.domain;

import java.sql.Timestamp;

public class ProDTO {
    private int id;
    private int services_id;
    private int address_id;
    private int gender_id;
    private int career;
    private int employee_number;
    private Boolean identify;
    private Boolean business;
    private Boolean certificate;
    private String pass;
    private String name;
    private String phone;
    private String email;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getServices_id() {
		return services_id;
	}

	public void setServices_id(int services_id) {
		this.services_id = services_id;
	}

    public int getAddress_id() {
		return address_id;
	}

	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}



    public int getGender_id() {
		return gender_id;
	}

	public void setGender_id(int gender_id) {
		this.gender_id = gender_id;
	}

	public int getEmployee_number() {
		return employee_number;
	}

	public void setEmployee_number(int employee_number) {
		this.employee_number = employee_number;
	}

	public Boolean getIdentify() {
		return identify;
	}

	public void setIdentify(Boolean identify) {
		this.identify = identify;
	}

	public int getCareer() {
        return career;
    }

    public void setCareer(int career) {
        this.career = career;
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

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
