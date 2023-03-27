package com.studymate.app.studyCafe.dto;
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
	private String studyCafeAcaliableDate;
	private int studyCafeAcaliableCapacity;
	private String studyCafeContent;
	private int memberNumber;
	
	public StudyCafeDTO() {}

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

	public String getStudyCafeAcaliableDate() {
		return studyCafeAcaliableDate;
	}

	public void setStudyCafeAcaliableDate(String studyCafeAcaliableDate) {
		this.studyCafeAcaliableDate = studyCafeAcaliableDate;
	}

	public int getStudyCafeAcaliableCapacity() {
		return studyCafeAcaliableCapacity;
	}

	public void setStudyCafeAcaliableCapacity(int studyCafeAcaliableCapacity) {
		this.studyCafeAcaliableCapacity = studyCafeAcaliableCapacity;
	}

	public String getStudyCafeContent() {
		return studyCafeContent;
	}

	public void setStudyCafeContent(String studyCafeContent) {
		this.studyCafeContent = studyCafeContent;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "StudyCafeDTO [studyCafeNumber=" + studyCafeNumber + ", studyCafeName=" + studyCafeName
				+ ", studyCafeAddress=" + studyCafeAddress + ", studyCafePrice=" + studyCafePrice
				+ ", studyCafeAcaliableDate=" + studyCafeAcaliableDate + ", studyCafeAcaliableCapacity="
				+ studyCafeAcaliableCapacity + ", studyCafeContent=" + studyCafeContent + ", memberNumber="
				+ memberNumber + "]";
	}
	
	
}
