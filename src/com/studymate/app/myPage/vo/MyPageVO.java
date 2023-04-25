package com.studymate.app.myPage.vo;

import java.util.Date;
import java.util.List;

public class MyPageVO {
	private int boardReadCount;
	private int boardNumber;
	private String boardTitle;
	private int commentCount;

	public int getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(int boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	@Override
	public String toString() {
		return "MyPageVO [boardReadCount=" + boardReadCount + ", boardNumber=" + boardNumber + ", boardTitle="
				+ boardTitle + ", commentCount=" + commentCount + "]";
	}

}
