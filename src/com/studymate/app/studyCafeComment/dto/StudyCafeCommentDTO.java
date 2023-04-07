package com.studymate.app.studyCafeComment.dto;

public class StudyCafeCommentDTO {
	private int cafeCommentNumber;
	private String cafeCommentContent;
	private String cafeCommentDate;
	private int cafeCommentScore; 
	private int memberNumber;
	private int studyCafeNumber;
	
	public StudyCafeCommentDTO() {}

	public int getCafeCommentNumber() {
		return cafeCommentNumber;
	}

	public void setCafeCommentNumber(int cafeCommentNumber) {
		this.cafeCommentNumber = cafeCommentNumber;
	}

	public String getCafeCommentContent() {
		return cafeCommentContent;
	}

	public void setCafeCommentContent(String cafeCommentContent) {
		this.cafeCommentContent = cafeCommentContent;
	}

	public String getCafeCommentDate() {
		return cafeCommentDate;
	}

	public void setCafeCommentDate(String cafeCommentDate) {
		this.cafeCommentDate = cafeCommentDate;
	}

	public int getCafeCommentScore() {
		return cafeCommentScore;
	}

	public void setCafeCommentScore(int cafeCommentScore) {
		this.cafeCommentScore = cafeCommentScore;
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
		return "StudyCafeCommentDTO [cafeCommentNumber=" + cafeCommentNumber + ", cafeCommentContent="
				+ cafeCommentContent + ", cafeCommentDate=" + cafeCommentDate + ", cafeCommentScore=" + cafeCommentScore
				+ ", memberNumber=" + memberNumber + ", studyCafeNumber=" + studyCafeNumber + "]";
	}
	
	
}
