package com.studymate.app.studyGroup.dto;
//study_group_number int unsigned auto_increment primary key,
//study_group_title varchar(300),
//study_group_field varchar(300),
//study_group_online varchar(300),
//study_group_capacity varchar(300),
//study_group_start_date datetime default now(),
//study_group_contact varchar(1000),
//study_group_duration varchar(300),
//study_group_content varchar(1000),
//study_group_read_count int unsigned default 0,
//member_number int unsigned,
public class StudyGroupDTO {
	private int studyGroupNumber;
	private String studyGroupTitle;
	private String studyGroupField;
	private String studyGroupOnline;
	private String studyGroupCapacity;
	private String studyGroupStartDate;
	private String studyGroupContact;
	private String studyGroupDuration;
	private String studyGroupcontent;
	private int studyGroupReadCount;
	private int memberNumber;
	
	public StudyGroupDTO() {}

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

	public String getStudyGroupOnline() {
		return studyGroupOnline;
	}

	public void setStudyGroupOnline(String studyGroupOnline) {
		this.studyGroupOnline = studyGroupOnline;
	}

	public String getStudyGroupCapacity() {
		return studyGroupCapacity;
	}

	public void setStudyGroupCapacity(String studyGroupCapacity) {
		this.studyGroupCapacity = studyGroupCapacity;
	}

	public String getStudyGroupStartDate() {
		return studyGroupStartDate;
	}

	public void setStudyGroupStartDate(String studyGroupStartDate) {
		this.studyGroupStartDate = studyGroupStartDate;
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

	public String getStudyGroupcontent() {
		return studyGroupcontent;
	}

	public void setStudyGroupcontent(String studyGroupcontent) {
		this.studyGroupcontent = studyGroupcontent;
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

	@Override
	public String toString() {
		return "StudyGroupDTO [studyGroupNumber=" + studyGroupNumber + ", studyGroupTitle=" + studyGroupTitle
				+ ", studyGroupField=" + studyGroupField + ", studyGroupOnline=" + studyGroupOnline
				+ ", studyGroupCapacity=" + studyGroupCapacity + ", studyGroupStartDate=" + studyGroupStartDate
				+ ", studyGroupContact=" + studyGroupContact + ", studyGroupDuration=" + studyGroupDuration
				+ ", studyGroupcontent=" + studyGroupcontent + ", studyGroupReadCount=" + studyGroupReadCount
				+ ", memberNumber=" + memberNumber + "]";
	}
	
	
}
