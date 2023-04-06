package com.studymate.app.studyGroupComment.vo;

public class StudyGroupCommentVO {
	private int studyGroupCommentCount;
	private int studyGroupCommentNumber;
	private String memberNickname;
	private String studyGroupCommentDate;
	private String studyGroupCommentContent;
	private int memberNumber;
	private int studyGroupNumber;
	
	public StudyGroupCommentVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public int getStudyGroupCommentCount() {
		return studyGroupCommentCount;
	}
	public void setStudyGroupCommentCount(int studyGroupCommentCount) {
		this.studyGroupCommentCount = studyGroupCommentCount;
	}
	public int getStudyGroupCommentNumber() {
		return studyGroupCommentNumber;
	}
	public void setStudyGroupCommentNumber(int studyGroupCommentNumber) {
		this.studyGroupCommentNumber = studyGroupCommentNumber;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getStudyGroupCommentDate() {
		return studyGroupCommentDate;
	}
	public void setStudyGroupCommentDate(String studyGroupCommentDate) {
		this.studyGroupCommentDate = studyGroupCommentDate;
	}
	public String getStudyGroupCommentContent() {
		return studyGroupCommentContent;
	}
	public void setStudyGroupCommentContent(String studyGroupCommentContent) {
		this.studyGroupCommentContent = studyGroupCommentContent;
	}
	public int getMemberNumber() {
		return memberNumber;
	}
	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}
	public int getStudyGroupNumber() {
		return studyGroupNumber;
	}
	public void setStudyGroupNumber(int studyGroupNumber) {
		this.studyGroupNumber = studyGroupNumber;
	}


	@Override
	public String toString() {
		return "StudyGroupCommentVO [studyGroupCommentCount=" + studyGroupCommentCount + ", studyGroupCommentNumber="
				+ studyGroupCommentNumber + ", memberNickname=" + memberNickname + ", studyGroupCommentDate="
				+ studyGroupCommentDate + ", studyGroupCommentContent=" + studyGroupCommentContent + ", memberNumber="
				+ memberNumber + ", studyGroupNumber=" + studyGroupNumber + "]";
	}
	
	
	
}
