package com.studymate.app.myPage.vo;

import java.util.List;

public class MyPageVO {
	private int boardComment;
	private int boardReadCount;
	private int boardNumber;
	private int memberNumber;
	private int commentCount;
	private int reservationNumber;
	private int studyCafePrice;
	private int cafeCommentCount;
	private String reservationStart;
	private String reservationEnd;
	private int countMember;

	public int getCountMember() {
		return countMember;
	}

	public void setCountMember(int countMember) {
		this.countMember = countMember;
	}

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

	private String boardTitle;
	private String studyCafeTitle;
	private String studyCafeAddress;
	private String studyCafeName;

	public String getStudyCafeName() {
		return studyCafeName;
	}

	public void setStudyCafeName(String studyCafeName) {
		this.studyCafeName = studyCafeName;
	}

	public int getCafeCommentCount() {
		return cafeCommentCount;
	}

	public void setCafeCommentCount(int cafeCommentCount) {
		this.cafeCommentCount = cafeCommentCount;
	}

	public int getCafeLikeCount() {
		return cafeLikeCount;
	}

	public void setCafeLikeCount(int cafeLikeCount) {
		this.cafeLikeCount = cafeLikeCount;
	}

	private int cafeLikeCount;
	private List<MyPageVO> boards;

	public String getStudyCafeTitle() {
		return studyCafeTitle;
	}

	public void setStudyCafeTitle(String studyCafeTitle) {
		this.studyCafeTitle = studyCafeTitle;
	}

	public String getStudyCafeAddress() {
		return studyCafeAddress;
	}

	public void setStudyCafeAddress(String studyCafeAddress) {
		this.studyCafeAddress = studyCafeAddress;
	}

	public int getStudyCafePrice() {
		return studyCafePrice;
	}

	public void setStudyCafePrice(int studyCafePrice) {
		this.studyCafePrice = studyCafePrice;
	}

//	private String study

	public List<MyPageVO> getBoards() {
		return boards;
	}

	public void setBoards(List<MyPageVO> boards) {
		this.boards = boards;
	}

	public MyPageVO() {
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public int getBoardComment() {
		return boardComment;
	}

	public void setBoardComment(int boardComment) {
		this.boardComment = boardComment;
	}

	public int getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(int boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

//	public List<FileDTO> getFiles() {
//		return files;
//	}
//
//	public void setFiles(List<FileDTO> files) {
//		this.files = files;
//	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	@Override
	public String toString() {
		return "MyPageVO [boardComment=" + boardComment + ", boardReadCount=" + boardReadCount + ", boardNumber="
				+ boardNumber + ", memberNumber=" + memberNumber + ", commentCount=" + commentCount
				+ ", reservationNumber=" + reservationNumber + ", studyCafePrice=" + studyCafePrice
				+ ", cafeCommentCount=" + cafeCommentCount + ", reservationStart=" + reservationStart
				+ ", reservationEnd=" + reservationEnd + ", countMember=" + countMember + ", boardTitle=" + boardTitle
				+ ", studyCafeTitle=" + studyCafeTitle + ", studyCafeAddress=" + studyCafeAddress + ", studyCafeName="
				+ studyCafeName + ", cafeLikeCount=" + cafeLikeCount + ", boards=" + boards + "]";
	}

}
