package com.studymate.app.studyCafeComment.vo;

public class StudyCafeCommentVO {
	private int cafeCommentNumber;
	private String cafeCommentContent;
	private String cafeCommentDate;
	private int cafeCommentScore; 
	private int memberNumber;
	private int studyCafeNumber;
	private String memberNickname;
	
	public StudyCafeCommentVO() {	}

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

	public int getSutdyCafeNumber() {
		return studyCafeNumber;
	}

	public void setSutdyCafeNumber(int sutdyCafeNumber) {
		this.studyCafeNumber = sutdyCafeNumber;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	@Override
	public String toString() {
		return "StudyCafeCommentVO [cafeCommentNumber=" + cafeCommentNumber + ", cafeCommentContent="
				+ cafeCommentContent + ", cafeCommentDate=" + cafeCommentDate + ", cafeCommentScore=" + cafeCommentScore
				+ ", memberNumber=" + memberNumber + ", studyCafeNumber=" + studyCafeNumber + ", memberNickname="
				+ memberNickname + "]";
	}
	
}
