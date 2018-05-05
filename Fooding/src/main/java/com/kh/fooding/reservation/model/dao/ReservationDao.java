package com.kh.fooding.reservation.model.dao;

import java.util.ArrayList;

import com.kh.fooding.reservation.model.vo.Reservation;

public interface ReservationDao {

	int cancelReservation(int rvid);
	
	int confirmReservation(int rvid);

	ArrayList<Reservation> beforeReservList(int mid, String mCode);

	ArrayList<Reservation> requestReservList(int mid);
 
}
