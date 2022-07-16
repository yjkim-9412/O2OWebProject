package com.itwillbs.domain;

public class ProAddrDTO {
    private int pro_id;
    private int address_id;
    private int cities_id;
    private String city_name;
    private int districts_id;
    private String district_name;

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

    public int getCities_id() {
        return cities_id;
    }

    public void setCities_id(int cities_id) {
        this.cities_id = cities_id;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public int getDistricts_id() {
        return districts_id;
    }

    public void setDistricts_id(int districts_id) {
        this.districts_id = districts_id;
    }

    public String getDistrict_name() {
        return district_name;
    }

    public void setDistrict_name(String district_name) {
        this.district_name = district_name;
    }

    @Override
    public String toString() {
        return "ProAddrDTO{" +
                "pro_id=" + pro_id +
                ", address_id=" + address_id +
                ", cities_id=" + cities_id +
                ", city_name='" + city_name + '\'' +
                ", districts_id=" + districts_id +
                ", district_name='" + district_name + '\'' +
                '}';
    }
}
