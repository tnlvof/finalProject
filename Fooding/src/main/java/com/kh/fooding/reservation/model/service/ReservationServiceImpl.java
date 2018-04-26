package com.kh.fooding.reservation.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.fooding.reservation.model.dao.ReservationDao;

public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private ReservationDao rd;
	@Autowired
	private SqlSessionTemplate sqlSession;

	/*@Override
	public String cancelReserv(int mid) {
		String result = rd.cancelReserv(mid);
		
		return result;
	}*/

}
