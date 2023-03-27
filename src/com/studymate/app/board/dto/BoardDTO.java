package com.studymate.app.board.dto;
//board_number int unsigned auto_increment primary key,
//board_title varchar(300),
//board_content varchar(1000),
//board_read_count int unsigned default 0,
//board_date datetime default now(),
//member_number int unsigned,
public class BoardDTO {
	private int boardNumber;
	private String boardTitle;
	private String boardContent;
	private int boardReadCount;
	private String boardDate;
	private int memberNumber;
	
	public BoardDTO() {}

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

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(int boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardNumber=" + boardNumber + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardReadCount=" + boardReadCount + ", boardDate=" + boardDate + ", memberNumber=" + memberNumber
				+ "]";
	}
	
}
