package com.kh.fooding.reservation.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public ArrayList<Reservation> beforeReservList(int mid) {
        ArrayList<Reservation> beforeReservList = (ArrayList)sqlSession.selectList("Reservation.beforeReservationList", mid);
		
		System.out.println("beforeReservList : " + beforeReservList);
		
		return beforeReservList;
	}

	// 예약할 때 가게 정보 가져오기
	@Override
	public StoreSam selectStoreInfo(String sid, SqlSessionTemplate sqlSession) {
		StoreSam sInfo = sqlSession.selectOne("Reservation.selectOneStore", sid);
		return sInfo;
	}

}
