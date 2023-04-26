package com.studymate.app.studyGroup.vo;

import java.util.List;

import com.studymate.app.studyGroupFile.dto.StudyGroupFileDTO;

public class StudyGroupVO {
	private int memberNumber;
	private int studyGroupNumber;
	private String studyGroupOnline;
	private String studyGroupcontent;
	private String studyGroupContactAddress;
	private String studyGroupStartDate;
	private String studyGroupTitle;
	private String memberNickname;
	private int studyGroupReadCount;
	private int studyGroupCommentCount;
	private int studyGroupLikeCount;
	private String studyGroupCapacity;
	private String studyGroupField;
	private String studyGroupContact;
	private String studyGroupDuration;
	private String studyGroupEndDate; 
	private List<StudyGroupFileDTO> files;
	
	
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


	public String getStudyGroupContactAddress() {
		return studyGroupContactAddress;
	}


	public void setStudyGroupContactAddress(String studyGroupContactAddress) {
		this.studyGroupContactAddress = studyGroupContactAddress;
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


	public int getStudyGroupLikeCount() {
		return studyGroupLikeCount;
	}


	public void setStudyGroupLikeCount(int studyGroupLikeCount) {
		this.studyGroupLikeCount = studyGroupLikeCount;
	}


	public String getStudyGroupCapacity() {
		return studyGroupCapacity;
	}


	public void setStudyGroupCapacity(String studyGroupCapacity) {
		this.studyGroupCapacity = studyGroupCapacity;
	}


	public String getStudyGroupField() {
		return studyGroupField;
	}


	public void setStudyGroupField(String studyGroupField) {
		this.studyGroupField = studyGroupField;
	}


	public String getStudyGroupContact() {
		return studyGroupContact;
	}


	public void setStudyGroupContact(String studyGroupContact) {
		this.studyGroupContact = studyGroupContact;
	}


	public String getStudyGroupDuration() {
		return studyGroupDuration;
	}


	public void setStudyGroupDuration(String studyGroupDuration) {
		this.studyGroupDuration = studyGroupDuration;
	}


	public String getStudyGroupEndDate() {
		return studyGroupEndDate;
	}


	public void setStudyGroupEndDate(String studyGroupEndDate) {
		this.studyGroupEndDate = studyGroupEndDate;
	}


	public List<StudyGroupFileDTO> getFiles() {
		return files;
	}


	public void setFiles(List<StudyGroupFileDTO> files) {
		this.files = files;
	}


	@Override
	public String toString() {
		return "StudyGroupVO [memberNumber=" + memberNumber + ", studyGroupNumber=" + studyGroupNumber
				+ ", studyGroupOnline=" + studyGroupOnline + ", studyGroupcontent=" + studyGroupcontent
				+ ", studyGroupContactAddress=" + studyGroupContactAddress + ", studyGroupStartDate="
				+ studyGroupStartDate + ", studyGroupTitle=" + studyGroupTitle + ", memberNickname=" + memberNickname
				+ ", studyGroupReadCount=" + studyGroupReadCount + ", studyGroupCommentCount=" + studyGroupCommentCount
				+ ", studyGroupLikeCount=" + studyGroupLikeCount + ", studyGroupCapacity=" + studyGroupCapacity
				+ ", studyGroupField=" + studyGroupField + ", studyGroupContact=" + studyGroupContact
				+ ", studyGroupDuration=" + studyGroupDuration + ", studyGroupEndDate=" + studyGroupEndDate + ", files="
				+ files + "]";
	}


	
	
	
  
}
