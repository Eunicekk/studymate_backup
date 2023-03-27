package com.studymate.app.studyCafeComment.dto;
//cafe_comment_number  int unsigned auto_increment primary key,
//cafe_comment_content varchar(1000),
//cafe_comment_date datetime default now(),
//cafe_comment_score tinyint unsigned,
//member_number int unsigned,
//study_cafe_number int unsigned,
public class StudyCafeCommentDTO {
	private int cafeCommentNumber;
	private String cafeCommentContent;
	private String cafeCommentDate;
	private int cafeCommentScore; 
	private int memberNumber;
	private int sutdyCafeNumber;
	
	public StudyCafeCommentDTO() {}

	public int getCafeCommentNumber() {
		return cafeCommentNumber;
	}

	public void setCafeCommentNumber(int cafeCommentNumber) {
		this.cafeCommentNumber = cafeCommentNumber;
	}

	public String getCafeCommentContent() {
		return cafeCommentContent;
	}

	public void setCafeCommentContent(String cafeCommentContent) {
		this.cafeCommentContent = cafeCommentContent;
	}

	public String getCafeCommentDate() {
		return cafeCommentDate;
	}

	public void setCafeCommentDate(String cafeCommentDate) {
		this.cafeCommentDate = cafeCommentDate;
	}

	public int getCafeCommentScore() {
		return cafeCommentScore;
	}

	public void setCafeCommentScore(int cafeCommentScore) {
		this.cafeCommentScore = cafeCommentScore;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getSutdyCafeNumber() {
		return sutdyCafeNumber;
	}

	public void setSutdyCafeNumber(int sutdyCafeNumber) {
		this.sutdyCafeNumber = sutdyCafeNumber;
	}

	@Override
	public String toString() {
		return "StudyCafeCommentDTO [cafeCommentNumber=" + cafeCommentNumber + ", cafeCommentContent="
				+ cafeCommentContent + ", cafeCommentDate=" + cafeCommentDate + ", cafeCommentScore=" + cafeCommentScore
				+ ", memberNumber=" + memberNumber + ", sutdyCafeNumber=" + sutdyCafeNumber + "]";
	}
	
	
}
