package com.models;

public class Active {
	private int ID;
	private String Title;
	private String Content;
	private String Author;
	private String IssueDate;
	public Active() {
		super();
	}
	public Active(int iD, String title, String content, String author, String issueDate) {
		super();
		ID = iD;
		Title = title;
		Content = content;
		Author = author;
		IssueDate = issueDate;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getAuthor() {
		return Author;
	}
	public void setAuthor(String author) {
		Author = author;
	}
	public String getIssueDate() {
		return IssueDate;
	}
	public void setIssueDate(String issueDate) {
		IssueDate = issueDate;
	}
	@Override
	public String toString() {
		return "Active [ID=" + ID + ", Title=" + Title + ", Content=" + Content + ", Author=" + Author + ", IssueDate="
				+ IssueDate + "]";
	}
	
	
	
}
