package com.studymate.app.memberLikeCafe.dto;
//member_number int unsigned,
//study_cafe_number int unsigned,
public class MemberLikeCafeDTO {
	private int memberNumber;
	private int studyCafeNumber;
	
	public MemberLikeCafeDTO() {}

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
		return "MemberLikeCafeDTO [memberNumber=" + memberNumber + ", studyCafeNumber=" + studyCafeNumber + "]";
	}
	
	
}
