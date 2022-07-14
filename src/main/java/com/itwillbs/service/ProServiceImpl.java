package com.itwillbs.service;
import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.GetEstimateDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.domain.ProEstimateDTO;
import com.itwillbs.dao.*;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProServiceImpl implements ProService {
	@Autowired
	private ProDAO proDAO;
	@Override
	public int getPageSize() {
		// TODO Auto-generated method stub
		return proDAO.getPageSize();
	}

	@Override
	public void insertProEstimate(ProEstimateDTO proEstimateDTO) {
		// TODO Auto-generated method stub
		proDAO.insertProEstimate(proEstimateDTO);
	}

	@Inject
	private AddressDTO addressDTO;

	
	@Override
	public int getAccId(int estimates_id) {
		// TODO Auto-generated method stub
		return proDAO.getAccId(estimates_id);
	}

	@Override
	public void deletePro(ProDTO proDTO) {
		proDAO.deletePro(proDTO);
	}

	@Override
    public void insertPro(ProDTO proDTO) {
		proDTO.setAddress_id(getMaxAddrId());
		System.out.println(proDTO.getAddress_id());
    	proDAO.insertPro(proDTO);
    }

	@Override
	public ProDTO getPro(int id) {
		// TODO Auto-generated method stub
		return proDAO.getPro(id);
	}

	@Override
	public GetEstimateDTO getEstimate(int services_id) {
		// TODO Auto-generated method stub
		return proDAO.getEstimate(services_id);
	}

	@Override
	public int getEstimateCount() {
		// TODO Auto-generated method stub
		return proDAO.getEstimateCount();
	}

	@Override
	public List<GetEstimateDTO> getEstimateList(PageDTO pageDTO) {
		
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow =(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
//		pageDTO.setStartRow(startRow);
		pageDTO.setEndRow(endRow);
		
		//디비 조회 limit startRow-1, pageSize
		pageDTO.setStartRow(startRow-1);
		
		return proDAO.getEstimateList(pageDTO);
	}

	@Override
	public GetEstimateDTO getEstimateCont(int estimates_id) {
		// TODO Auto-generated method stub
		return proDAO.getEstimateCont(estimates_id);
	}

	@Override
	public ProDTO getPro(String email) {
		// TODO Auto-generated method stub
		return proDAO.getPro(email);
	}

	@Override
	public GetProDTO getProid(int id) {
		// TODO Auto-generated method stub
		return proDAO.getProid(id);
	}

	@Override
	public GetProDTO getProemail(String email) {
		// TODO Auto-generated method stub
		return proDAO.getProemail(email);
	}

	@Override
	public AddressDTO passAddress(String[] addr, String[] extraAddr,String detailAddress,double x, double y) {
		CityDTO cityDTO = new CityDTO();
		DistrictDTO districtDTO = new DistrictDTO();
		AddistrictDTO addistrictDTO = new AddistrictDTO();
		if(extraAddr[0]=="") {
			cityDTO.setCity(addr[0]);
			cityDTO=proDAO.getCity(cityDTO);
				
			districtDTO.setCity_id(cityDTO.getId());
			districtDTO.setDistrict(addr[1]);
			districtDTO=proDAO.getDistrict(districtDTO);
						
			addistrictDTO.setDistrict_id(districtDTO.getId());
			addistrictDTO.setAddistrict(addr[2]);
			addistrictDTO=proDAO.getAddDistrict(addistrictDTO);
		}else {
			cityDTO.setCity(addr[0]);
			cityDTO=proDAO.getCity(cityDTO);
			
			districtDTO.setCity_id(cityDTO.getId());
			districtDTO.setDistrict(addr[1]);
			districtDTO=proDAO.getDistrict(districtDTO);
						
			addistrictDTO.setDistrict_id(districtDTO.getId());
			addistrictDTO.setAddistrict(extraAddr[0]);
			addistrictDTO=proDAO.getAddDistrict(addistrictDTO);
		}

		addressDTO.setCity_id(districtDTO.getCity_id());
		addressDTO.setDistrict_id(addistrictDTO.getDistrict_id());
		addressDTO.setAddistrict_id(addistrictDTO.getId());
		addressDTO.setAddressdetail(detailAddress);
		addressDTO.setX_axis(x);
		addressDTO.setY_axis(y);

		return addressDTO;
	}

	@Override
	public void insertAddress(AddressDTO addressDTO) {
		// TODO Auto-generated method stub
		proDAO.insertAddress(addressDTO);
	}

	@Override
	public int getMaxAddrId() {
		// TODO Auto-generated method stub
		return proDAO.getMaxAddrId();
	}
	
	@Override
	public ProDTO proCheck(ProDTO proDTO) {
		System.out.println("ProServiceImpl proCheck()");
		return proDAO.proCheck(proDTO);
	}

	
}
