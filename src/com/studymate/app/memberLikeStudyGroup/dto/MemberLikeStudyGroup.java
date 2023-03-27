package com.studymate.app.memberLikeStudyGroup.dto;
//member_number int unsigned,
//study_group_number int unsigned,
public class MemberLikeStudyGroup {
	private int memberNumber;
	private int studyGroupNumber;
	
	public MemberLikeStudyGroup() {}

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
		return "MemberLikeStudyGroup [memberNumber=" + memberNumber + ", studyGroupNumber=" + studyGroupNumber + "]";
	}
	
	
}
