package com.kh.fooding.reservation.model.service;

import java.util.ArrayList;

import com.kh.fooding.reservation.model.exception.BookException;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.StoreSam;

public interface ReservationService {

	int cancelReservation(int rvid);

	int confirmReservation(int rvid);
	
	ArrayList<Reservation> beforeReservList(int mid, String mCode);

	ArrayList<Reservation> requestReservList(int mid);

	int insertBook(Reservation rsv) throws BookException;

	ArrayList<Reservation> selectRsvList(Reservation rsv);

	



}
