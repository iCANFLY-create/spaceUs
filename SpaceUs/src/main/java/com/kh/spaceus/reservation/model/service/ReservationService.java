package com.kh.spaceus.reservation.model.service;

import java.util.List;

import com.kh.spaceus.reservation.model.vo.Reservation;
import com.kh.spaceus.reservation.model.vo.ReservationAvail;

public interface ReservationService {

	//공간별 예약 가능 시간
	List<ReservationAvail> selectListAvail(String spaceNo);

	int insertReservationVail(ReservationAvail reservationAvail);
	
	//공간별 예약
	int insertReservation(Reservation reservation);
	
	List<Reservation> selectListReservation(String email);

	List<Reservation> hostSearchReservation(Reservation reservation);

	List<Reservation> selectUseReservation(String memberEmail, int limit, int offset);
	
	List<Reservation> ingReservation(String email);

	List<Reservation> finishReservation(String email);

	int cancleReservation(String revNo);
	
	List<Reservation> selectHostReservationList(String memberEmail, int limit, int offset);

	int selectHostRevTotalContents(String memberEmail);


}
