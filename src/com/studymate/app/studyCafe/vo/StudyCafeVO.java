package com.studymate.app.studyCafe.vo;

import java.util.List;

import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class StudyCafeVO {
	   private int studyCafeNumber;
	   private String studyCafeName;
	   private String studyCafeAddress;
	   private String studyCafePrice;
	   private int studyCafeReadCount;
	   private int studyCafeLikeCount;
	   private int studyCafeCommentCount;
	   private double studyCafeCommentScore;
	   private String studyCafeContent;
	   private String studyCafeAvailableDate;
	   private int studyCafeAvailableCapacity;
	   private int studyCafeCommentScoreCount;
	   private List<StudyCafeFileDTO> files;
	   private String cafeFileSystemName;
	   
	public StudyCafeVO() {}

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

	public int getStudyCafeReadCount() {
		return studyCafeReadCount;
	}

	public void setStudyCafeReadCount(int studyCafeReadCount) {
		this.studyCafeReadCount = studyCafeReadCount;
	}

	public int getStudyCafeLikeCount() {
		return studyCafeLikeCount;
	}

	public void setStudyCafeLikeCount(int studyCafeLikeCount) {
		this.studyCafeLikeCount = studyCafeLikeCount;
	}

	public int getStudyCafeCommentCount() {
		return studyCafeCommentCount;
	}

	public void setStudyCafeCommentCount(int studyCafeCommentCount) {
		this.studyCafeCommentCount = studyCafeCommentCount;
	}

	public double getStudyCafeCommentScore() {
		return studyCafeCommentScore;
	}

	public void setStudyCafeCommentScore(double studyCafeCommentScore) {
		this.studyCafeCommentScore = studyCafeCommentScore;
	}

	public String getStudyCafeContent() {
		return studyCafeContent;
	}

	public void setStudyCafeContent(String studyCafeContent) {
		this.studyCafeContent = studyCafeContent;
	}

	public String getStudyCafeAvailableDate() {
		return studyCafeAvailableDate;
	}

	public void setStudyCafeAvailableDate(String studyCafeAvailableDate) {
		this.studyCafeAvailableDate = studyCafeAvailableDate;
	}

	public int getStudyCafeAvailableCapacity() {
		return studyCafeAvailableCapacity;
	}

	public void setStudyCafeAvailableCapacity(int studyCafeAvailableCapacity) {
		this.studyCafeAvailableCapacity = studyCafeAvailableCapacity;
	}

	public int getStudyCafeCommentScoreCount() {
		return studyCafeCommentScoreCount;
	}

	public void setStudyCafeCommentScoreCount(int studyCafeCommentScoreCount) {
		this.studyCafeCommentScoreCount = studyCafeCommentScoreCount;
	}

	public List<StudyCafeFileDTO> getFiles() {
		return files;
	}

	public void setFiles(List<StudyCafeFileDTO> files) {
		this.files = files;
	}

	public String getCafeFileSystemName() {
		return cafeFileSystemName;
	}

	public void setCafeFileSystemName(String cafeFileSystemName) {
		this.cafeFileSystemName = cafeFileSystemName;
	}

	@Override
	public String toString() {
		return "StudyCafeVO [studyCafeNumber=" + studyCafeNumber + ", studyCafeName=" + studyCafeName
				+ ", studyCafeAddress=" + studyCafeAddress + ", studyCafePrice=" + studyCafePrice
				+ ", studyCafeReadCount=" + studyCafeReadCount + ", studyCafeLikeCount=" + studyCafeLikeCount
				+ ", studyCafeCommentCount=" + studyCafeCommentCount + ", studyCafeCommentScore="
				+ studyCafeCommentScore + ", studyCafeContent=" + studyCafeContent + ", studyCafeAvailableDate="
				+ studyCafeAvailableDate + ", studyCafeAvailableCapacity=" + studyCafeAvailableCapacity
				+ ", studyCafeCommentScoreCount=" + studyCafeCommentScoreCount + ", files=" + files
				+ ", cafeFileSystemName=" + cafeFileSystemName + "]";
	}

}
