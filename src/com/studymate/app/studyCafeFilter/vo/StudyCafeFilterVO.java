package com.studymate.app.studyCafeFilter.vo;

public class StudyCafeFilterVO {
	private String studyCafeAddress;
	private String studyCafeAvailableDate;
	private String minPrice;
	private String maxPrice;
	
	public StudyCafeFilterVO() {	}

	public String getStudyCafeAddress() {
		return studyCafeAddress;
	}

	public void setStudyCafeAddress(String studyCafeAddress) {
		this.studyCafeAddress = studyCafeAddress;
	}

	public String getStudyCafeAvailableDate() {
		return studyCafeAvailableDate;
	}

	public void setStudyCafeAvailableDate(String studyCafeAvailableDate) {
		this.studyCafeAvailableDate = studyCafeAvailableDate;
	}

	public String getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(String minPrice) {
		this.minPrice = minPrice;
	}

	public String getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(String maxPrice) {
		this.maxPrice = maxPrice;
	}

	@Override
	public String toString() {
		return "StudyCafeFilterVO [studyCafeAddress=" + studyCafeAddress + ", studyCafeAvailableDate="
				+ studyCafeAvailableDate + ", minPrice=" + minPrice + ", maxPrice=" + maxPrice + "]";
	}

}
