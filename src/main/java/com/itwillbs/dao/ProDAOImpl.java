package com.itwillbs.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class ProDAOImpl implements ProDAO{
    @Inject
    private SqlSession sqlSession;
    @Override
    public void insertPro() {

    }
}
