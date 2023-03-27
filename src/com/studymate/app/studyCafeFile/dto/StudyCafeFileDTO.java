package com.studymate.app.studyCafeFile.dto;
//cafe_file_system_name varchar(300) primary key,
//cafe_file_original_name varchar(300),
//study_cafe_number int unsigned,
public class StudyCafeFileDTO {
	private String cafeFileSystemName;
	private String cafeFileOriginalName;
	private int studyCafeNumber;
	
	public StudyCafeFileDTO() {}

	public String getCafeFileSystemName() {
		return cafeFileSystemName;
	}

	public void setCafeFileSystemName(String cafeFileSystemName) {
		this.cafeFileSystemName = cafeFileSystemName;
	}

	public String getCafeFileOriginalName() {
		return cafeFileOriginalName;
	}

	public void setCafeFileOriginalName(String cafeFileOriginalName) {
		this.cafeFileOriginalName = cafeFileOriginalName;
	}

	public int getStudyCafeNumber() {
		return studyCafeNumber;
	}

	public void setStudyCafeNumber(int studyCafeNumber) {
		this.studyCafeNumber = studyCafeNumber;
	}

	@Override
	public String toString() {
		return "StudyCafeFileDTO [cafeFileSystemName=" + cafeFileSystemName + ", cafeFileOriginalName="
				+ cafeFileOriginalName + ", studyCafeNumber=" + studyCafeNumber + "]";
	}
	
	
}
