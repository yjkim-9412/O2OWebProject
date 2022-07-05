package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;


@Getter
@Setter
public class ProDTO {
    private int id;
    private int serviceId;
    private int addressId;
    private int gender;
    private int career;
    private int employees;
    private Boolean identity;
    private Boolean business;
    private Boolean certificate;
    private String pass;
    private String name;
    private String phone;
    private String email;

}
