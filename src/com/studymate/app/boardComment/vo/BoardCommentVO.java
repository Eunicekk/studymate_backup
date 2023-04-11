package com.studymate.app.boardComment.vo;

public class BoardCommentVO {
	private int boardCommentNumber;
	private String boardCommentContent;
	private String boardCommentDate;
	private int memberNumber;
	private int boardNumber;
	private String memberNickname;
	private int boardCommentCount; 
	
	public BoardCommentVO(){}

	public int getBoardCommentNumber() {
		return boardCommentNumber;
	}

	public void setBoardCommentNumber(int boardCommentNumber) {
		this.boardCommentNumber = boardCommentNumber;
	}

	public String getBoardCommentContent() {
		return boardCommentContent;
	}

	public void setBoardCommentContent(String boardCommentContent) {
		this.boardCommentContent = boardCommentContent;
	}

	public String getBoardCommentDate() {
		return boardCommentDate;
	}

	public void setBoardCommentDate(String boardCommentDate) {
		this.boardCommentDate = boardCommentDate;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public int getBoardCommentCount() {
		return boardCommentCount;
	}

	public void setBoardCommentCount(int boardCommentCount) {
		this.boardCommentCount = boardCommentCount;
	}

	@Override
	public String toString() {
		return "BoardCommentVO [boardCommentNumber=" + boardCommentNumber + ", boardCommentContent="
				+ boardCommentContent + ", boardCommentDate=" + boardCommentDate + ", memberNumber=" + memberNumber
				+ ", boardNumber=" + boardNumber + ", memberNickname=" + memberNickname + ", boardCommentCount="
				+ boardCommentCount + "]";
	}
	
	
	
}
