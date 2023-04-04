package com.studymate.app.myPage.vo;

public class MyPageVO {
	private String boardTitle;
	private int boardComment;
	private int boardReadCount;
	private int memberNumber;
	
	public MyPageVO() {}

	public String getBoardTitle() {
		return boardTitle;
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

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "MyPageBoardVO [boardTitle=" + boardTitle + ", boardComment=" + boardComment + ", boardReadCount="
				+ boardReadCount + ", memberNumber=" + memberNumber + "]";
	}
	
}
