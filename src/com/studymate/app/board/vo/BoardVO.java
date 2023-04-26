package com.studymate.app.board.vo;

import java.util.List;

import com.studymate.app.boardFile.dto.BoardFileDTO;

public class BoardVO {
	private int boardNumber;
	private String boardTitle;
	private String boardContent;
	private String boardDate;
	private int boardReadCount;
	private int memberNumber;
	private String memberId;
	private List<BoardFileDTO> files;
	private int boardCommentCount;
	private String boardWriter;
	private String memberNickname;
	
	public BoardVO() {
		
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

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
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

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public List<BoardFileDTO> getFiles() {
		return files;
	}

	public void setFiles(List<BoardFileDTO> files) {
		this.files = files;
	}

	public int getBoardCommentCount() {
		return boardCommentCount;
	}

	public void setBoardCommentCount(int boardCommentCount) {
		this.boardCommentCount = boardCommentCount;
	}
	
	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	
	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	
	@Override
	public String toString() {
		return "BoardVO [boardNumber=" + boardNumber + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", boardReadCount=" + boardReadCount + ", memberNumber=" + memberNumber
				+ ", memberId=" + memberId + ", files=" + files + ", boardCommentCount=" + boardCommentCount + ", boardWriter=" + boardWriter + ", memberNickname=" + memberNickname + "]";
	}
	
	
}
