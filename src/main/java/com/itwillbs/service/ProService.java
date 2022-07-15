package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.GetEstimateDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.domain.ProEstimateDTO;
import com.itwillbs.domain.ServiceDTO;

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
    void insertProEstimate(ProEstimateDTO proEstimateDTO);
    int getAccId(int estimates_id);
    List<ServiceDTO> getSearchList(String keyword);

    public void deletePro(ProDTO proDTO);

    public void updateName(GetProDTO proDTO);

    public void updateEmail(GetProDTO proDTO);

    public void updatePass(GetProDTO proDTO);
    void insertImg(ProDTO proDTO);
    ProDTO getProImg(String email);
    void updateImg(ProDTO proDTO);
}
