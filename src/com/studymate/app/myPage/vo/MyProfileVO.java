package com.studymate.app.myPage.vo;

import java.util.List;

public class MyProfileVO {
	private int memberNumber;
	private String profileSystemName;
	private String profileOriginalName;
	private String memberNickname;
	private String memberEmail;
	private String memberPhoneNumber;
	private String memberPassword;
	
	
	public int getMemberNumber() {
		return memberNumber;
	}
	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}
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
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}
	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	@Override
	public String toString() {
		return "MyProfileVO [memberNumber=" + memberNumber + ", profileSystemName=" + profileSystemName
				+ ", profileOriginalName=" + profileOriginalName + ", memberNickname=" + memberNickname
				+ ", memberEmail=" + memberEmail + ", memberPhoneNumber=" + memberPhoneNumber + ", memberPassword="
				+ memberPassword + "]";
	}

	
}
