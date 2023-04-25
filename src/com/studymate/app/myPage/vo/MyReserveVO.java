package com.studymate.app.myPage.vo;

import java.util.Date;

public class MyReserveVO {
	private int memberNumber;
	private int reservationNumber;
	private int studyCafePrice;
	private int countMember;
	private int studyCafeNumber;
	private Date reservationStart;
	private Date reservationEnd;
	private String formatStartDate;
	private String formatEndDate;
	private String studyCafeAddress;
	private String studyCafeName;
	private String cafeFileSystemName;

	
	public String getCafeFileSystemName() {
		return cafeFileSystemName;
	}

	public void setCafeFileSystemName(String cafeFileSystemName) {
		this.cafeFileSystemName = cafeFileSystemName;
	}

	public int getStudyCafeNumber() {
		return studyCafeNumber;
	}

	public void setStudyCafeNumber(int studyCafeNumber) {
		this.studyCafeNumber = studyCafeNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getReservationNumber() {
		return reservationNumber;
	}

	public void setReservationNumber(int reservationNumber) {
		this.reservationNumber = reservationNumber;
	}

	public Date getReservationStart() {
		return reservationStart;
	}

	public void setReservationStart(Date reservationStart) {
		this.reservationStart = reservationStart;
	}

	public Date getReservationEnd() {
		return reservationEnd;
	}

	public void setReservationEnd(Date reservationEnd) {
		this.reservationEnd = reservationEnd;
	}

	public int getCountMember() {
		return countMember;
	}

	public void setCountMember(int countMember) {
		this.countMember = countMember;
	}

	public String getFormatStartDate() {
		return formatStartDate;
	}

	public void setFormatStartDate(String formatStartDate) {
		this.formatStartDate = formatStartDate;
	}

	public String getFormatEndDate() {
		return formatEndDate;
	}

	public void setFormatEndDate(String formatEndDate) {
		this.formatEndDate = formatEndDate;
	}

	public int getStudyCafePrice() {
		return studyCafePrice;
	}

	public void setStudyCafePrice(int studyCafePrice) {
		this.studyCafePrice = studyCafePrice;
	}

	public String getStudyCafeAddress() {
		return studyCafeAddress;
	}

	public void setStudyCafeAddress(String studyCafeAddress) {
		this.studyCafeAddress = studyCafeAddress;
	}

	public String getStudyCafeName() {
		return studyCafeName;
	}

	public void setStudyCafeName(String studyCafeName) {
		this.studyCafeName = studyCafeName;
	}

	@Override
	public String toString() {
		return "MyReserveVO [memberNumber=" + memberNumber + ", reservationNumber=" + reservationNumber
				+ ", studyCafePrice=" + studyCafePrice + ", countMember=" + countMember + ", studyCafeNumber="
				+ studyCafeNumber + ", reservationStart=" + reservationStart + ", reservationEnd=" + reservationEnd
				+ ", formatStartDate=" + formatStartDate + ", formatEndDate=" + formatEndDate + ", studyCafeAddress="
				+ studyCafeAddress + ", studyCafeName=" + studyCafeName + ", cafeFileSystemName=" + cafeFileSystemName
				+ "]";
	}

}
