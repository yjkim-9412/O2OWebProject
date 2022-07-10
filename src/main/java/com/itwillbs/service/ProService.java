package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.GetEstimateDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProDTO;

public interface ProService {

    public void insertPro(ProDTO proDTO);
    void insertAddress(AddressDTO addressDTO);
    AddressDTO passAddress(String[] addr,String[] extraAddr,String detailAddress,double x,double y);
    int getMaxAddrId();
    ProDTO getPro(String email);
    ProDTO getPro(int id);
    GetProDTO getProid(int id);
    GetProDTO getProemail(String email);
    public ProDTO proCheck(ProDTO proDTO);
    GetEstimateDTO getEstimate(int services_id);
    int getEstimateCount();
    List<GetEstimateDTO> getEstimateList(PageDTO pageDTO);
    GetEstimateDTO getEstimateCont(int estimates_id);
    int getPageSize();
}
