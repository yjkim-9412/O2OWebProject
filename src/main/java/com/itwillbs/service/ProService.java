package com.itwillbs.service;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;

public interface ProService {

    public void insertPro(ProDTO proDTO);
    
   //  public ProDTO proCheck(ProDTO proDTO);
    
    public ProDTO proCheck();
}
