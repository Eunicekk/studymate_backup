package com.studymate.app.myPage.vo;

import java.util.Date;
import java.util.List;

public class MyPageVO {
	private int boardComment;
	private int boardReadCount;
	private int boardNumber;
	private String boardTitle;
	private int memberNumber;
	private int reservationNumber;
	private Date reservationStart;
	private Date reservationEnd;
	private int countMember;
	private String formatStartDate;
	private String formatEndDate;
	private int studyCafePrice;
	private String studyCafeTitle;
	private String studyCafeAddress;
	private String studyCafeName;
	private int commentCount;
	private int cafeCommentCount;
	private int cafeLikeCount;
	private List<MyPageVO> boards;
	private int groupCommentCount;
	private int studyGroupReadCount;
	private String studyGroupTitle;
	private String studyGroupField;
	private String studyGroupOnline;
	private String studyGroupContent;
	private String memberNickname;
	private Date studyGroupStartDate;
	private Date studyGroupEndDate;
	
	
	
	public Date getStudyGroupEndDate() {
		return studyGroupEndDate;
	}

	public void setStudyGroupEndDate(Date studyGroupEndDate) {
		this.studyGroupEndDate = studyGroupEndDate;
	}

	public Date getStudyGroupStartDate() {
		return studyGroupStartDate;
	}

	public void setStudyGroupStartDate(Date studyGroupStartDate) {
		this.studyGroupStartDate = studyGroupStartDate;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public int getGroupCommentCount() {
		return groupCommentCount;
	}

	public void setGroupCommentCount(int groupCommentCount) {
		this.groupCommentCount = groupCommentCount;
	}

	public int getStudyGroupReadCount() {
		return studyGroupReadCount;
	}

	public void setStudyGroupReadCount(int studyGroupReadCount) {
		this.studyGroupReadCount = studyGroupReadCount;
	}

	public String getStudyGroupTitle() {
		return studyGroupTitle;
	}

	public void setStudyGroupTitle(String studyGroupTitle) {
		this.studyGroupTitle = studyGroupTitle;
	}

	public String getStudyGroupField() {
		return studyGroupField;
	}

	public void setStudyGroupField(String studyGroupField) {
		this.studyGroupField = studyGroupField;
	}

	public String getStudyGroupOnline() {
		return studyGroupOnline;
	}

	public void setStudyGroupOnline(String studyGroupOnline) {
		this.studyGroupOnline = studyGroupOnline;
	}

	public String getStudyGroupContent() {
		return studyGroupContent;
	}

	public void setStudyGroupContent(String studyGroupContent) {
		this.studyGroupContent = studyGroupContent;
	}

	public int getCountMember() {
		return countMember;
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

	public void setCountMember(int countMember) {
		this.countMember = countMember;
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
				+ boardNumber + ", boardTitle=" + boardTitle + ", memberNumber=" + memberNumber + ", reservationNumber="
				+ reservationNumber + ", reservationStart=" + reservationStart + ", reservationEnd=" + reservationEnd
				+ ", countMember=" + countMember + ", formatStartDate=" + formatStartDate + ", formatEndDate="
				+ formatEndDate + ", studyCafePrice=" + studyCafePrice + ", studyCafeTitle=" + studyCafeTitle
				+ ", studyCafeAddress=" + studyCafeAddress + ", studyCafeName=" + studyCafeName + ", commentCount="
				+ commentCount + ", cafeCommentCount=" + cafeCommentCount + ", cafeLikeCount=" + cafeLikeCount
				+ ", boards=" + boards + ", groupCommentCount=" + groupCommentCount + ", studyGroupReadCount="
				+ studyGroupReadCount + ", studyGroupTitle=" + studyGroupTitle + ", studyGroupField=" + studyGroupField
				+ ", studyGroupOnline=" + studyGroupOnline + ", studyGroupContent=" + studyGroupContent
				+ ", memberNickname=" + memberNickname + ", studyGroupStartDate=" + studyGroupStartDate
				+ ", studyGroupEndDate=" + studyGroupEndDate + "]";
	}

}
