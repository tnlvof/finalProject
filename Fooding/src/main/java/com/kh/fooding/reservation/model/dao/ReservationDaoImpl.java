package com.kh.fooding.reservation.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDaoImpl implements ReservationDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int cancelReservation(int mid) {
		int cancelReserv = sqlSession.update("Reservation.cancelReservation", mid);
		
		return cancelReserv;
	}

}
