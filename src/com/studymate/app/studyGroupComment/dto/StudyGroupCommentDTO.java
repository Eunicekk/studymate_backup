package com.studymate.app.studyGroupComment.dto;
//study_group_comment_number int unsigned auto_increment primary key,
//study_group_comment_content varchar(1000),
//study_group_comment_date datetime default now(),
//member_number int unsigned,
//study_group_number int unsigned,
//constraint fk_member_number foreign key(member_number)
//references tbl_member(member_number),
//constraint fk_study_group_number foreign key(study_group_number)
//references tbl_study_group(study_group_number)
public class StudyGroupCommentDTO {
	private int studyGroupCommentNumber;
	private String studyGroupCommentContent;
	private String studyGroupCommentDate;
	private int memberNumber;
	private int studyGroupNumber;
	
	public StudyGroupCommentDTO() {}

	public int getStudyGroupCommentNumber() {
		return studyGroupCommentNumber;
	}

	public void setStudyGroupCommentNumber(int studyGroupCommentNumber) {
		this.studyGroupCommentNumber = studyGroupCommentNumber;
	}

	public String getStudyGroupCommentContent() {
		return studyGroupCommentContent;
	}

	public void setStudyGroupCommentContent(String studyGroupCommentContent) {
		this.studyGroupCommentContent = studyGroupCommentContent;
	}

	public String getStudyGroupCommentDate() {
		return studyGroupCommentDate;
	}

	public void setStudyGroupCommentDate(String studyGroupCommentDate) {
		this.studyGroupCommentDate = studyGroupCommentDate;
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
		return "StudyGroupCommentDTO [studyGroupCommentNumber=" + studyGroupCommentNumber
				+ ", studyGroupCommentContent=" + studyGroupCommentContent + ", studyGroupCommentDate="
				+ studyGroupCommentDate + ", memberNumber=" + memberNumber + ", studyGroupNumber=" + studyGroupNumber
				+ "]";
	}
	
	
}
