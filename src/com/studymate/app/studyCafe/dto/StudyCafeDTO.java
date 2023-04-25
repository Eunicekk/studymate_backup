package com.studymate.app.studyCafe.dto;

import java.util.List;

import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

//study_cafe_number  int unsigned auto_increment primary key,
//study_cafe_name varchar(300),
//study_cafe_address varchar(300),
//study_cafe_price varchar(300),
//study_cafe_avaliable_date datetime,
//study_cafe_available_capacity tinyint unsigned ,
//study_cafe_content varchar(300),
//member_number int unsigned,
public class StudyCafeDTO {
	private int studyCafeNumber;
	private String studyCafeName;
	private String studyCafeAddress;
	private String studyCafePrice;
	private String studyCafeAvaliableDate;
	private int studyCafeAvaliableCapacity;
	private String studyCafeContent;
	private String cafeFileSystemName;
	private int reservationNumber;

	public StudyCafeDTO() {
	}

	public int getStudyCafeNumber() {
		return studyCafeNumber;
	}

	public void setStudyCafeNumber(int studyCafeNumber) {
		this.studyCafeNumber = studyCafeNumber;
	}

	public String getStudyCafeName() {
		return studyCafeName;
	}

	public void setStudyCafeName(String studyCafeName) {
		this.studyCafeName = studyCafeName;
	}

	public String getStudyCafeAddress() {
		return studyCafeAddress;
	}

	public void setStudyCafeAddress(String studyCafeAddress) {
		this.studyCafeAddress = studyCafeAddress;
	}

	public String getStudyCafePrice() {
		return studyCafePrice;
	}

	public void setStudyCafePrice(String studyCafePrice) {
		this.studyCafePrice = studyCafePrice;
	}

	public String getStudyCafeAvaliableDate() {
		return studyCafeAvaliableDate;
	}

	public void setStudyCafeAvaliableDate(String studyCafeAvaliableDate) {
		this.studyCafeAvaliableDate = studyCafeAvaliableDate;
	}

	public int getStudyCafeAvaliableCapacity() {
		return studyCafeAvaliableCapacity;
	}

	public void setStudyCafeAvaliableCapacity(int studyCafeAvaliableCapacity) {
		this.studyCafeAvaliableCapacity = studyCafeAvaliableCapacity;
	}

	public String getStudyCafeContent() {
		return studyCafeContent;
	}

	public void setStudyCafeContent(String studyCafeContent) {
		this.studyCafeContent = studyCafeContent;
	}

	public int getReservationNumber() {
		return reservationNumber;
	}

	public void setReservationNumber(int reservationNumber) {
		this.reservationNumber = reservationNumber;
	}

	public String getCafeFileSystemName() {
		return cafeFileSystemName;
	}

	public void setCafeFileSystemName(String cafeFileSystemName) {
		this.cafeFileSystemName = cafeFileSystemName;
	}

	@Override
	public String toString() {
		return "StudyCafeDTO [studyCafeNumber=" + studyCafeNumber + ", studyCafeName=" + studyCafeName
				+ ", studyCafeAddress=" + studyCafeAddress + ", studyCafePrice=" + studyCafePrice
				+ ", studyCafeAvaliableDate=" + studyCafeAvaliableDate + ", studyCafeAvaliableCapacity="
				+ studyCafeAvaliableCapacity + ", studyCafeContent=" + studyCafeContent + ", cafeFileSystemName="
				+ cafeFileSystemName + ", reservationNumber=" + reservationNumber + "]";
	}

}