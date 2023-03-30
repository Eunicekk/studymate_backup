package com.studymate.app.studyGroup.vo;

public class StudyGroupVO {
	private int memberNumber;
	private int studyGroupNumber;
	private String studyGroupOnline;
	private String studyGroupcontent;
	private String studyGroupStartDate;
	private String studyGroupTitle;
	private String memberNickname;
	private int studyGroupReadCount;
	private int studyGroupCommentCount;
	
	public StudyGroupVO() {
		// TODO Auto-generated constructor stub
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

	public String getStudyGroupOnline() {
		return studyGroupOnline;
	}

	public void setStudyGroupOnline(String studyGroupOnline) {
		this.studyGroupOnline = studyGroupOnline;
	}

	public String getStudyGroupcontent() {
		return studyGroupcontent;
	}

	public void setStudyGroupcontent(String studyGroupcontent) {
		this.studyGroupcontent = studyGroupcontent;
	}

	public String getStudyGroupStartDate() {
		return studyGroupStartDate;
	}

	public void setStudyGroupStartDate(String studyGroupStartDate) {
		this.studyGroupStartDate = studyGroupStartDate;
	}

	public String getStudyGroupTitle() {
		return studyGroupTitle;
	}

	public void setStudyGroupTitle(String studyGroupTitle) {
		this.studyGroupTitle = studyGroupTitle;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public int getStudyGroupReadCount() {
		return studyGroupReadCount;
	}

	public void setStudyGroupReadCount(int studyGroupReadCount) {
		this.studyGroupReadCount = studyGroupReadCount;
	}

	public int getStudyGroupCommentCount() {
		return studyGroupCommentCount;
	}

	public void setStudyGroupCommentCount(int studyGroupCommentCount) {
		this.studyGroupCommentCount = studyGroupCommentCount;
	}

	@Override
	public String toString() {
		return "StudyGroupVO [memberNumber=" + memberNumber + ", studyGroupNumber=" + studyGroupNumber
				+ ", studyGroupOnline=" + studyGroupOnline + ", studyGroupcontent=" + studyGroupcontent
				+ ", studyGroupStartDate=" + studyGroupStartDate + ", studyGroupTitle=" + studyGroupTitle
				+ ", memberNickname=" + memberNickname + ", studyGroupReadCount=" + studyGroupReadCount
				+ ", studyGroupCommentCount=" + studyGroupCommentCount + "]";
	}

	
	
	
  
}
