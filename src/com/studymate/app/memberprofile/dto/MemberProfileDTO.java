package com.studymate.app.memberprofile.dto;
//profile_system_name varchar(300) primary key,
//profile_original_name varchar(1000),
//member_number int unsigned,
public class MemberProfileDTO {
	private String profileSystemName;
	private String profileOriginalName;
	private int memberNumber;
	
	public MemberProfileDTO() {}

	public String getProfileSystemName() {
		return profileSystemName;
	}

	public void setProfileSystemName(String profileSystemName) {
		this.profileSystemName = profileSystemName;
	}

	public String getProfileOriginalName() {
		return profileOriginalName;
	}

	public void setProfileOriginalName(String profileOriginalName) {
		this.profileOriginalName = profileOriginalName;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "MemberProfileDTO [profileSystemName=" + profileSystemName + ", profileOriginalName="
				+ profileOriginalName + ", memberNumber=" + memberNumber + "]";
	}
	
}
