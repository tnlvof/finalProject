package com.kh.fooding.reservation.model.service;

import java.util.ArrayList;

import com.kh.fooding.reservation.model.vo.Reservation;

public interface ReservationService {

	int cancelReservation(int rvid);

	ArrayList<Reservation> beforeReservList(int mid);

}
