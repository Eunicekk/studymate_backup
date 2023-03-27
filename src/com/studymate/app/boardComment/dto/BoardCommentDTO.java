package com.studymate.app.boardComment.dto;
//board_comment_number int unsigned auto_increment primary key,
//board_comment_content varchar(1000),
//board_comment_date  datetime default now(),
//member_number int unsigned,
//board_number int unsigned,
public class BoardCommentDTO {
	private int boardCommentNumber;
	private String boardCommentContent;
	private String boardCommentDate;
	private int memberNumber;
	private int boardNumber;
	
	public BoardCommentDTO() {}

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

	@Override
	public String toString() {
		return "BoardCommentDTO [boardCommentNumber=" + boardCommentNumber + ", boardCommentContent="
				+ boardCommentContent + ", boardCommentDate=" + boardCommentDate + ", memberNumber=" + memberNumber
				+ ", boardNumber=" + boardNumber + "]";
	}
	
}
