package com.studymate.app.admin.cafe.vo;

import java.util.List;

import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class adminCafeVO {
	private int studyCafeNumber;
	private String studyCafeName;
	private String studyCafeAddress;
	private String studyCafePrice;
	private int studyCafeAvaliableCapacity;
	private int studyCafeReadCount;
	private int likeCount;
	private int studyCafeCommentNumber;
	private double studyCafeCommentScore;
	private String cafeFileSystemName;
	
	public adminCafeVO() {}

	public int getStudyCafeNumber() {
		return studyCafeNumber;
	}

	public void setStudyCafeNumber(int studyCafeNumber) {
		this.studyCafeNumber = studyCafeNumber;
	}

	public String getStudyCafeName() {
		return studyCafeName;
	}

	public void setStudyCafeName(String studyCafeName) {
		this.studyCafeName = studyCafeName;
	}

	public String getStudyCafeAddress() {
		return studyCafeAddress;
	}

	public void setStudyCafeAddress(String studyCafeAddress) {
		this.studyCafeAddress = studyCafeAddress;
	}

	public String getStudyCafePrice() {
		return studyCafePrice;
	}

	public void setStudyCafePrice(String studyCafePrice) {
		this.studyCafePrice = studyCafePrice;
	}

	public int getStudyCafeAvaliableCapacity() {
		return studyCafeAvaliableCapacity;
	}

	public void setStudyCafeAvaliableCapacity(int studyCafeAvaliableCapacity) {
		this.studyCafeAvaliableCapacity = studyCafeAvaliableCapacity;
	}

	public int getStudyCafeReadCount() {
		return studyCafeReadCount;
	}

	public void setStudyCafeReadCount(int studyCafeReadCount) {
		this.studyCafeReadCount = studyCafeReadCount;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public int getStudyCafeCommentNumber() {
		return studyCafeCommentNumber;
	}

	public void setStudyCafeCommentNumber(int studyCafeCommentNumber) {
		this.studyCafeCommentNumber = studyCafeCommentNumber;
	}

	public double getStudyCafeCommentScore() {
		return studyCafeCommentScore;
	}

	public void setStudyCafeCommentScore(double studyCafeCommentScore) {
		this.studyCafeCommentScore = studyCafeCommentScore;
	}


	public String getCafeFileSystemName() {
		return cafeFileSystemName;
	}

	public void setCafeFileSystemName(String cafeFileSystemName) {
		this.cafeFileSystemName = cafeFileSystemName;
	}

	@Override
	public String toString() {
		return "adminCafeVO [studyCafeNumber=" + studyCafeNumber + ", studyCafeName=" + studyCafeName
				+ ", studyCafeAddress=" + studyCafeAddress + ", studyCafePrice=" + studyCafePrice
				+ ", studyCafeAvaliableCapacity=" + studyCafeAvaliableCapacity + ", studyCafeReadCount="
				+ studyCafeReadCount + ", likeCount=" + likeCount + ", studyCafeCommentNumber=" + studyCafeCommentNumber
				+ ", studyCafeCommentScore=" + studyCafeCommentScore + ", cafeFileSystemName=" + cafeFileSystemName
				+ "]";
	}


	
	 
	
	
}
