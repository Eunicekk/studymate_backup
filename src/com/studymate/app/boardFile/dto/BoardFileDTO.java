package com.studymate.app.boardFile.dto;
//board_file_system_name varchar(300) primary key,
//board_file_original_name varchar(1000),
//board_number int unsigned,
public class BoardFileDTO {
	private String boardFileSystemName;
	private String boardFileOriginalName;
	private int boardNumber;
	
	public BoardFileDTO() {}

	public String getBoardFileSystemName() {
		return boardFileSystemName;
	}

	public void setBoardFileSystemName(String boardFileSystemName) {
		this.boardFileSystemName = boardFileSystemName;
	}

	public String getBoardFileOriginalName() {
		return boardFileOriginalName;
	}

	public void setBoardFileOriginalName(String boardFileOriginalName) {
		this.boardFileOriginalName = boardFileOriginalName;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	@Override
	public String toString() {
		return "BoardFileDTO [boardFileSystemName=" + boardFileSystemName + ", boardFileOriginalName="
				+ boardFileOriginalName + ", boardNumber=" + boardNumber + "]";
	}
	
}
