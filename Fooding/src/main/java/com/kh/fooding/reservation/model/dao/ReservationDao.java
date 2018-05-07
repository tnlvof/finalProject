package com.kh.fooding.reservation.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.reservation.model.exception.BookException;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.StoreSam;

public interface ReservationDao {

	int cancelReservation(int rvid);
	
	int confirmReservation(int rvid);



	int insertBook(Reservation rsv, SqlSessionTemplate sqlSession) throws BookException;

	ArrayList<Reservation> selectRsvList(Reservation rsv, SqlSessionTemplate sqlSession);

	
 

	ArrayList<Reservation> beforeReservList(int mid, String mCode);

	ArrayList<Reservation> requestReservList(int mid);

	ArrayList<Reservation> selectAllRsvList();

	ArrayList<Reservation> searchRsvList(Map<String, String> data, String searchCon);


}
