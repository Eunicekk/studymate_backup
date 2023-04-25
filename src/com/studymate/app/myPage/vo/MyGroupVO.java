package com.studymate.app.myPage.vo;

import java.util.Date;

public class MyGroupVO {
	private int memberNumber;
	private String formatStartDate;
	private String studyGroupTitle;
	private String studyGroupField;
	private String studyGroupOnline;
	private String studyGroupContent;
	private String memberNickname;
	private Date studyGroupStartDate;
	private int groupCommentCount;
	private int studyGroupReadCount;
	private int studyGroupNumber;
	private String profileSystemName;
	
	
	public String getProfileSystemName() {
		return profileSystemName;
	}
	public void setProfileSystemName(String profileSystemName) {
		this.profileSystemName = profileSystemName;
	}
	public int getGroupCommentCount() {
		return groupCommentCount;
	}
	public void setGroupCommentCount(int groupCommentCount) {
		this.groupCommentCount = groupCommentCount;
	}
	public int getStudyGroupReadCount() {
		return studyGroupReadCount;
	}
	public void setStudyGroupReadCount(int studyGroupReadCount) {
		this.studyGroupReadCount = studyGroupReadCount;
	}
	public int getMemberNumber() {
		return memberNumber;
	}
	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}
	public String getFormatStartDate() {
		return formatStartDate;
	}
	public void setFormatStartDate(String formatStartDate) {
		this.formatStartDate = formatStartDate;
	}
	public String getStudyGroupTitle() {
		return studyGroupTitle;
	}
	public void setStudyGroupTitle(String studyGroupTitle) {
		this.studyGroupTitle = studyGroupTitle;
	}
	public String getStudyGroupField() {
		return studyGroupField;
	}
	public void setStudyGroupField(String studyGroupField) {
		this.studyGroupField = studyGroupField;
	}
	public String getStudyGroupOnline() {
		return studyGroupOnline;
	}
	public void setStudyGroupOnline(String studyGroupOnline) {
		this.studyGroupOnline = studyGroupOnline;
	}
	public String getStudyGroupContent() {
		return studyGroupContent;
	}
	public void setStudyGroupContent(String studyGroupContent) {
		this.studyGroupContent = studyGroupContent;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public Date getStudyGroupStartDate() {
		return studyGroupStartDate;
	}
	public void setStudyGroupStartDate(Date studyGroupStartDate) {
		this.studyGroupStartDate = studyGroupStartDate;
	}
	public int getStudyGroupNumber() {
		return studyGroupNumber;
	}
	public void setStudyGroupNumber(int studyGroupNumber) {
		this.studyGroupNumber = studyGroupNumber;
	}
	@Override
	public String toString() {
		return "MyGroupVO [memberNumber=" + memberNumber + ", formatStartDate=" + formatStartDate + ", studyGroupTitle="
				+ studyGroupTitle + ", studyGroupField=" + studyGroupField + ", studyGroupOnline=" + studyGroupOnline
				+ ", studyGroupContent=" + studyGroupContent + ", memberNickname=" + memberNickname
				+ ", studyGroupStartDate=" + studyGroupStartDate + ", groupCommentCount=" + groupCommentCount
				+ ", studyGroupReadCount=" + studyGroupReadCount + ", studyGroupNumber=" + studyGroupNumber
				+ ", profileSystemName=" + profileSystemName + "]";
	}
	
	
}
