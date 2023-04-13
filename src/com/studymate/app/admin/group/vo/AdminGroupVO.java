package com.studymate.app.admin.group.vo;

public class AdminGroupVO {
	private int studyGroupNumber;
	private String studyGroupTitle;
	private String studyGroupField;
	private String studyGroupEndDate;
	private String studyGroupDuration;
	private int likeCount;
	private int studyGroupReadCount;
	private int memberNumber;
	private String memberNickname;
	private String profileSystemName;
	
	public AdminGroupVO() {}

	public int getStudyGroupNumber() {
		return studyGroupNumber;
	}

	public void setStudyGroupNumber(int studyGroupNumber) {
		this.studyGroupNumber = studyGroupNumber;
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

	public String getStudyGroupEndDate() {
		return studyGroupEndDate;
	}

	public void setStudyGroupEndDate(String studyGroupEndDate) {
		this.studyGroupEndDate = studyGroupEndDate;
	}

	public String getStudyGroupDuration() {
		return studyGroupDuration;
	}

	public void setStudyGroupDuration(String studyGroupDuration) {
		this.studyGroupDuration = studyGroupDuration;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
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

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	
	
	
	public String getProfileSystemName() {
		return profileSystemName;
	}

	public void setProfileSystemName(String profileSystemName) {
		this.profileSystemName = profileSystemName;
	}

	@Override
	public String toString() {
		return "AdminGroupVO [studyGroupNumber=" + studyGroupNumber + ", studyGroupTitle=" + studyGroupTitle
				+ ", studyGroupField=" + studyGroupField + ", studyGroupEndDate=" + studyGroupEndDate
				+ ", studyGroupDuration=" + studyGroupDuration + ", likeCount=" + likeCount + ", studyGroupReadCount="
				+ studyGroupReadCount + ", memberNumber=" + memberNumber + ", memberNickname=" + memberNickname
				+ ", profileSystemName=" + profileSystemName + "]";
	}

	
	
	
	
	
}
