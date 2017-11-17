package com.models;

public class Bendi {
	private String wname;
	private String pwd;
	private String sex;
	private String tel;
	private String email;
	private String question;
	private String answer;
	public Bendi() {
		super();
	}
	

	public Bendi(String wname, String pwd) {
		super();
		this.wname = wname;
		this.pwd = pwd;
	}

	public Bendi(String wname, String email, String question, String answer) {
		super();
		this.wname = wname;
		this.email = email;
		this.question = question;
		this.answer = answer;
	}

	public Bendi(String wname, String pwd, String sex, String tel, String email, String question, String answer) {
		super();
		this.wname = wname;
		this.pwd = pwd;
		this.sex = sex;
		this.tel = tel;
		this.email = email;
		this.question = question;
		this.answer = answer;
	}

	public String getWname() {
		return wname;
	}

	public void setWname(String wname) {
		this.wname = wname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
