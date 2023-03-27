package com.studymate.app.studyGroupLeader.dto;
//group_leader_number int unsigned auto_increment primary key,
//member_number int unsigned,
//study_group_number int unsigned,
public class StudyGroupLeaderDTO {
	private int groupLeaderNumber;
	private int memberNumber;
	private int studyGroupNumber;
	
	public StudyGroupLeaderDTO() {}

	public int getGroupLeaderNumber() {
		return groupLeaderNumber;
	}

	public void setGroupLeaderNumber(int groupLeaderNumber) {
		this.groupLeaderNumber = groupLeaderNumber;
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
		return "StudyGroupLeaderDTO [groupLeaderNumber=" + groupLeaderNumber + ", memberNumber=" + memberNumber
				+ ", studyGroupNumber=" + studyGroupNumber + "]";
	}
	
	
}
