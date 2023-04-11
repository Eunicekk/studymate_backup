package com.studymate.app.admin.search.vo;

public class SearchVO {
	private String searchText;
	private int startRow;
	private int rowCount;
	
	
	
	
	public String getSearchText() {
		return searchText;
	}




	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}




	public int getStartRow() {
		return startRow;
	}




	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}




	public int getRowCount() {
		return rowCount;
	}




	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}




	@Override
	public String toString() {
		return "SearchVO [searchText=" + searchText + ", startRow=" + startRow + ", rowCount=" + rowCount + "]";
	}
	
	
	
	
}
