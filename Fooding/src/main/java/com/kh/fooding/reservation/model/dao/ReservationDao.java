package com.kh.fooding.reservation.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.StoreSam;

public interface ReservationDao {

	int cancelReservation(int rvid);

	ArrayList<Reservation> beforeReservList(int mid);

	
 
}
