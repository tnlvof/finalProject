package com.kh.fooding.reservation.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.reservation.model.dao.ReservationDao;

@Service
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private ReservationDao rd;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int cancelReservation(int rvid) {
		int cancelReserv = rd.cancelReservation(rvid);
		
		System.out.println("Service rvid : " + rvid);
		System.out.println("Service cancelReserv : " + cancelReserv);
		
		return cancelReserv;
	}


}
