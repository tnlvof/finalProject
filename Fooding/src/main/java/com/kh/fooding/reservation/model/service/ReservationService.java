package com.kh.fooding.reservation.model.service;

import java.util.ArrayList;

import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.StoreSam;

public interface ReservationService {

	int cancelReservation(int rvid);

	ArrayList<Reservation> beforeReservList(int mid);



}
