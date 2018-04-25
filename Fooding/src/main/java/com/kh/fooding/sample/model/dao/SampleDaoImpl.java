package com.kh.fooding.sample.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.sample.model.vo.Sample;

@Repository
public class SampleDaoImpl implements SampleDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Sample searchSample(String bizNo) {
		
		
		Sample s = sqlSession.selectOne("Sample.searchSample", bizNo);
		
		System.out.println(s);
		
		return s;
	}
}
