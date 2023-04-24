package com.studymate.app.studyGroupSearch.vo;

public class StudyGroupSearchVO {
	
	private String studyGroupOnline;
	private String studyGroupField;
	private String studyGroupStartDate;
	
	public StudyGroupSearchVO() {
		// TODO Auto-generated constructor stub
	}

	public String getStudyGroupOnline() {
		return studyGroupOnline;
	}

	public void setStudyGroupOnline(String studyGroupOnline) {
		this.studyGroupOnline = studyGroupOnline;
	}

	public String getStudyGroupField() {
		return studyGroupField;
	}

	public void setStudyGroupField(String studyGroupField) {
		this.studyGroupField = studyGroupField;
	}

	public String getStudyGroupStartDate() {
		return studyGroupStartDate;
	}

	public void setStudyGroupStartDate(String studyGroupStartDate) {
		this.studyGroupStartDate = studyGroupStartDate;
	}

	@Override
	public String toString() {
		return "StudyGroupSearchVO [studyGroupOnline=" + studyGroupOnline + ", studyGroupField=" + studyGroupField
				+ ", studyGroupStartDate=" + studyGroupStartDate + "]";
	}
	
	
	

}
