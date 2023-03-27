package com.studymate.app.admin.dto;
//admin_number int unsigned auto_increment primary key,
//admin_id varchar(300),
//admin_password varchar(300),
//admin_name varchar(300),
//admin_nickname varchar(300),
//study_cafe_number int unsigned,
//cafe_file_system_name varchar(300),
public class AdminDTO {
	private int adminNumber;
	private String adminId;
	private String adminPassword;
	private String adminName;
	private String adminNickname;
	private int studyCafeNumber;
	private String cafeFileSystemName;
	
	public AdminDTO() {}

	public int getAdminNumber() {
		return adminNumber;
	}

	public void setAdminNumber(int adminNumber) {
		this.adminNumber = adminNumber;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminNickname() {
		return adminNickname;
	}

	public void setAdminNickname(String adminNickname) {
		this.adminNickname = adminNickname;
	}

	public int getStudyCafeNumber() {
		return studyCafeNumber;
	}

	public void setStudyCafeNumber(int studyCafeNumber) {
		this.studyCafeNumber = studyCafeNumber;
	}

	public String getCafeFileSystemName() {
		return cafeFileSystemName;
	}

	public void setCafeFileSystemName(String cafeFileSystemName) {
		this.cafeFileSystemName = cafeFileSystemName;
	}

	@Override
	public String toString() {
		return "AdminDTO [adminNumber=" + adminNumber + ", adminId=" + adminId + ", adminPassword=" + adminPassword
				+ ", adminName=" + adminName + ", adminNickname=" + adminNickname + ", studyCafeNumber="
				+ studyCafeNumber + ", cafeFileSystemName=" + cafeFileSystemName + "]";
	}
	
}
