package com.itwillbs.dao;

import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.ProDTO;

public interface ProDAO {
    public void insertPro(ProDTO proDTO);
    CityDTO getCity(CityDTO cityDTO);
    DistrictDTO getDistrict(DistrictDTO districtDTO);
    AddistrictDTO getAddDistrict(AddistrictDTO addistrictDTO);
    void insertAddress(AddressDTO addressDTO);
    int getMaxAddrId();
    ProDTO getPro(String email);
    GetProDTO getProid(int id);
    GetProDTO getProemail(String email);

    public ProDTO proCheck();
}




