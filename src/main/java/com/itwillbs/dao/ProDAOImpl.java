package com.itwillbs.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.ProDTO;

import javax.inject.Inject;

@Repository
public class ProDAOImpl implements ProDAO{
    @Inject
    private SqlSession sqlSession;
    
    private String namespace="com.itwillbs.member.ProMapper";
    
	@Override
    public void insertPro(ProDTO proDTO) {
    	System.out.println("ProDAOImpl insertPro()");
    	sqlSession.insert(namespace+".insertPro", proDTO);
    }

	@Override
	public GetProDTO getProid(int id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getProid", id);
	}

	@Override
	public GetProDTO getProemail(String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getProemail", email);
	}

	@Override
	public int getMaxAddrId() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getMaxAddrId");
	}

	@Override
	public ProDTO getPro(String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getPro", email);
	}

	@Override
	public CityDTO getCity(CityDTO cityDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getCity", cityDTO);
	}

	@Override
	public void insertAddress(AddressDTO addressDTO) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insertAddress",addressDTO);
	}

	@Override
	public DistrictDTO getDistrict(DistrictDTO districtDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getDistrict", districtDTO);
	}

	@Override
	public AddistrictDTO getAddDistrict(AddistrictDTO addistrictDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getAddDistrict", addistrictDTO);
	}
	
	@Override
	public ProDTO proCheck() {
		System.out.println("ProDAOImpl proCheck()");
		return sqlSession.selectOne(namespace+".proCheck");
	}
}
