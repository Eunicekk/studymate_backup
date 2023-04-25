package com.studymate.app.myPage.vo;


public class MyCafeVO {
	private String studyCafeAddress;
	private String studyCafeName;
	private int memberNumber;
	private int studyCafeNumber;
	private int cafeCommentCount;
	private int studyCafePrice;
	private int cafeLikeCount;
	private double studyCafeCommentScore;
	private String cafeFileSystemName;

	
	
	public String getCafeFileSystemName() {
		return cafeFileSystemName;
	}

	public void setCafeFileSystemName(String cafeFileSystemName) {
		this.cafeFileSystemName = cafeFileSystemName;
	}

	public double getStudyCafeCommentScore() {
		return studyCafeCommentScore;
	}

	public void setStudyCafeCommentScore(double studyCafeCommentScore) {
		this.studyCafeCommentScore = studyCafeCommentScore;
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

	public int getCafeCommentCount() {
		return cafeCommentCount;
	}

	public void setCafeCommentCount(int cafeCommentCount) {
		this.cafeCommentCount = cafeCommentCount;
	}

	public int getStudyCafePrice() {
		return studyCafePrice;
	}

	public void setStudyCafePrice(int studyCafePrice) {
		this.studyCafePrice = studyCafePrice;
	}

	public int getCafeLikeCount() {
		return cafeLikeCount;
	}

	public void setCafeLikeCount(int cafeLikeCount) {
		this.cafeLikeCount = cafeLikeCount;
	}

	@Override
	public String toString() {
		return "MyCafeVO [studyCafeAddress=" + studyCafeAddress + ", studyCafeName=" + studyCafeName + ", memberNumber="
				+ memberNumber + ", studyCafeNumber=" + studyCafeNumber + ", cafeCommentCount=" + cafeCommentCount
				+ ", studyCafePrice=" + studyCafePrice + ", cafeLikeCount=" + cafeLikeCount + ", studyCafeCommentScore="
				+ studyCafeCommentScore + ", cafeFileSystemName=" + cafeFileSystemName + "]";
	}

}
