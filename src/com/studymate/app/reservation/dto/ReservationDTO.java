package com.studymate.app.reservation.dto;
//reservation_number int unsigned auto_increment primary key,
//reservation_start datetime,
//reservation_end datetime,
//reservation_cost varchar(300),
//reservation_capctiy tinyint unsigned,
//member_number int unsigned,
//study_cafe_number int unsigned,
public class ReservationDTO {
	private int reservationNumber;
	private String reservationStart;
	private String reservationEnd;
	private String reservationCost;
	private int reservationCapacity;
	private int memberNumber;
	private int studyCafeNumber;
	
	public ReservationDTO() {}

	public int getReservationNumber() {
		return reservationNumber;
	}

	public void setReservationNumber(int reservationNumber) {
		this.reservationNumber = reservationNumber;
	}

	public String getReservationStart() {
		return reservationStart;
	}

	public void setReservationStart(String reservationStart) {
		this.reservationStart = reservationStart;
	}

	public String getReservationEnd() {
		return reservationEnd;
	}

	public void setReservationEnd(String reservationEnd) {
		this.reservationEnd = reservationEnd;
	}

	public String getReservationCost() {
		return reservationCost;
	}

	public void setReservationCost(String reservationCost) {
		this.reservationCost = reservationCost;
	}

	public int getReservationCapacity() {
		return reservationCapacity;
	}

	public void setReservationCapacity(int reservationCapacity) {
		this.reservationCapacity = reservationCapacity;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getStudyCafeNumber() {
		return studyCafeNumber;
	}

	public void setStudyCafeNumber(int studyCafeNumber) {
		this.studyCafeNumber = studyCafeNumber;
	}

	@Override
	public String toString() {
		return "ReservationDTO [reservationNumber=" + reservationNumber + ", reservationStart=" + reservationStart
				+ ", reservationEnd=" + reservationEnd + ", reservationCost=" + reservationCost
				+ ", reservationCapacity=" + reservationCapacity + ", memberNumber=" + memberNumber
				+ ", studyCafeNumber=" + studyCafeNumber + "]";
	}
	
	
}
