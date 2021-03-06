package com.kh.fooding.reservation.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.reservation.model.dao.ReservationDao;
import com.kh.fooding.reservation.model.exception.BookException;
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
	
	// 예약 등록
	@Override
	public int insertBook(Reservation rsv) throws BookException{
		int result = rd.insertBook(rsv, sqlSession);
		return result;
	}

	// 예약 리스트  가져오기 - myPage 회원
	@Override
	public ArrayList<Reservation> selectRsvList(Reservation rsv) {
		ArrayList<Reservation >RsvList = rd.selectRsvList(rsv, sqlSession);
		return RsvList;
	}



	@Override
	public ArrayList<Reservation> requestReservList(int mid) {
        ArrayList<Reservation> requestReservList = rd.requestReservList(mid);
		
		return requestReservList;
	}


	// 관리자 - 예약리스트 조회
	@Override
	public ArrayList<Reservation> selectAllRsvList() {
		
		ArrayList<Reservation> rsvList = rd.selectAllRsvList();
		return rsvList;
	}

	// 관리자 - 예약 검색
	@Override
	public ArrayList<Reservation> searchRsvList(Map<String, String> data, String searchCon) {
		
		ArrayList<Reservation> searchRsvList = rd.searchRsvList(data, searchCon);
		
		return searchRsvList;
	}



}
