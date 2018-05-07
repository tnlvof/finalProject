package com.kh.fooding.reservation.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.reservation.model.exception.BookException;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.StoreSam;

@Repository
public class ReservationDaoImpl implements ReservationDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int cancelReservation(int rvid) {
		int cancelReserv = sqlSession.update("Reservation.cancelReservation", rvid);
		
		return cancelReserv;
	}

	@Override
	public int confirmReservation(int rvid) {
        int confirmReserv = sqlSession.update("Reservation.confirmReservation", rvid);
		
		return confirmReserv;
	}

	@Override
	public ArrayList<Reservation> beforeReservList(int mid, String mCode) {
        String reservListQ = "";
		
		switch(mCode) {
			case "일반": reservListQ = "Reservation.beforeReservationList";break;
			case "업체": reservListQ = "Reservation.beforeStoreReservationList";break;
		}
		
        ArrayList<Reservation> beforeReservList = (ArrayList)sqlSession.selectList(reservListQ, mid);
		
		System.out.println("beforeReservList : " + beforeReservList);
		
		return beforeReservList;
	}


	// 예약 등록
	@Override
	public int insertBook(Reservation rsv, SqlSessionTemplate sqlSession) throws BookException {
		int result = sqlSession.insert("Reservation.insertBook", rsv);
		
		if(result<=0) {
			throw new BookException("예약 등록 실패 ");
		}
		return result;
	}

	// 예약 리스트 가져오기 
	@Override
	public ArrayList<Reservation> selectRsvList(Reservation rsv, SqlSessionTemplate sqlSession) {
		
		ArrayList<Reservation> rsvList = (ArrayList) sqlSession.selectList("Reservation.selectRsvList", rsv);
		return rsvList;
	}


	@Override
	public ArrayList<Reservation> requestReservList(int mid) {
        ArrayList<Reservation> requestReservList = (ArrayList)sqlSession.selectList("Reservation.requestReservationList", mid);
		
		System.out.println("requestReservList : " + requestReservList);
		
		return requestReservList;
	}

	// 관리자 페이지 
	@Override
	public ArrayList<Reservation> selectAllRsvList() {
		
		ArrayList<Reservation> rsvList = (ArrayList) sqlSession.selectList("Reservation.selectAllRsvList");
	
		return rsvList;
	}

	
	// 관리자 페이지 - 예약 검색
	@Override
	public ArrayList<Reservation> searchRsvList(Map<String, String> data, String searchCon) {
		
		String statement="";
		
		switch(searchCon) {
		case "아이디" : statement = "Reservation.searchByUserId"; break;
		case "업체명" : statement = "Reservation.searchByStoreName";break;
		case "날짜" : statement="Reservation.searchByDate"; break;
		}
		
		if(searchCon == "날짜") {
			String editDate = data.get("search");
			data.put("search", editDate.replace("-", "/"));			
			
		}
		
		ArrayList<Reservation> rsvSearchList = (ArrayList) sqlSession.selectList(statement, data);
		System.out.println(rsvSearchList);
	
		return rsvSearchList;
	}



}
