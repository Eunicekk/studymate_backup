package com.studymate.app.faq.dto;
//faq_number  int unsigned auto_increment primary key,
//faq_title varchar(300),
//faq_content varchar(1000),
//faq_date datetime default now(),
//admin_number int unsigned,
public class FaqDTO {
	private int faqNumber;
	private String faqTitle;
	private String faqContent;
	private String faqDate;
	private int adminNumber;
	
	public FaqDTO() {}

	public int getFaqNumber() {
		return faqNumber;
	}

	public void setFaqNumber(int faqNumber) {
		this.faqNumber = faqNumber;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public String getFaqDate() {
		return faqDate;
	}

	public void setFaqDate(String faqDate) {
		this.faqDate = faqDate;
	}

	public int getAdminNumber() {
		return adminNumber;
	}

	public void setAdminNumber(int adminNumber) {
		this.adminNumber = adminNumber;
	}

	@Override
	public String toString() {
		return "FaqDTO [faqNumber=" + faqNumber + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + ", faqDate="
				+ faqDate + ", adminNumber=" + adminNumber + "]";
	}
	
	
}
