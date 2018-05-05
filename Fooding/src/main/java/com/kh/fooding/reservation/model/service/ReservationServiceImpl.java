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
	public int confirmReservation(int rvid) {
        int confirmReserv = rd.confirmReservation(rvid);
		
		System.out.println("Service rvid : " + rvid);
		System.out.println("Service confirmReserv : " + confirmReserv);
		
		return confirmReserv;
	}

	@Override
	public ArrayList<Reservation> beforeReservList(int mid, String mCode) {
		ArrayList<Reservation> beforeReservList = rd.beforeReservList(mid, mCode);
		
		return beforeReservList;
	}



	@Override
	public ArrayList<Reservation> requestReservList(int mid) {
        ArrayList<Reservation> requestReservList = rd.requestReservList(mid);
		
		return requestReservList;
	}



}
