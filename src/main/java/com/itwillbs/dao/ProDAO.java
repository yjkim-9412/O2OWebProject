package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.GetEstimateDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.domain.ProEstimateDTO;
import com.itwillbs.domain.ServiceDTO;

public interface ProDAO {
    public void insertPro(ProDTO proDTO);
    CityDTO getCity(CityDTO cityDTO);
    DistrictDTO getDistrict(DistrictDTO districtDTO);
    AddistrictDTO getAddDistrict(AddistrictDTO addistrictDTO);
    void insertAddress(AddressDTO addressDTO);
    int getMaxAddrId();
    ProDTO getPro(String email);
    ProDTO getPro(int id);
    GetProDTO getProid(int id);
    GetProDTO getProemail(String email);
    GetEstimateDTO getEstimate(int services_id);
    List<GetEstimateDTO> getEstimateList(PageDTO pageDTO);
    int getEstimateCount();
    GetEstimateDTO getEstimateCont(int estimates_id);
    public ProDTO proCheck(ProDTO proDTO);
    int getPageSize();
    void insertProEstimate(ProEstimateDTO proEstimateDTO);
    int getAccId(int estimates_id);
    List<ServiceDTO> getSearchList(String keyword);

    public void deletePro(ProDTO proDTO);

    public void updateName(GetProDTO proDTO);

    public void updateEmail(GetProDTO proDTO);

    public void updatePass(GetProDTO proDTO);
}




