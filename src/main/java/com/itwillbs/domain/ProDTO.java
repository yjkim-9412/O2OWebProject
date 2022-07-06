package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;


@Getter
@Setter

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
    private String password;
    private String name;
    private String phone;
    private String email;
    private Timestamp date;



}
