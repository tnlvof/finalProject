package com.kh.fooding.sample.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.sample.model.dao.SampleDao;
import com.kh.fooding.sample.model.vo.Sample;

@Service
public class SampleServiceImpl implements SampleService {
	@Autowired
	private SampleDao sd;
	@Override
	public Sample searchSample(String bizNo) {
		Sample s =	sd.searchSample(bizNo);  
		
		
		
		return s;
	}

}
