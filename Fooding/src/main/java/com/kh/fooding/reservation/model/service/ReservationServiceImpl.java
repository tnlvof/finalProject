package com.kh.fooding.reservation.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.reservation.model.dao.ReservationDao;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.StoreSam;

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

	@Override
	public ArrayList<Reservation> beforeReservList(int mid) {
		ArrayList<Reservation> beforeReservList = rd.beforeReservList(mid);
		
		return beforeReservList;
	}
	// 예약하는 가게 정보 가져오기
	@Override
	public StoreSam getStoreInfo(String sid) {
		StoreSam sInfo = rd.selectStoreInfo(sid, sqlSession);
		
		return sInfo;
	}


	


}
