package com.models;

public class Goodsmeg {
	private int ID;
	private String GoodsStyle;
	private String GoodsName;
	private String GoodsNumber;
	private String GoodsUnit;
	private String StartOmit;
	private String StartCity;
	private String EndOmit;
	private String EndCity;
	private String Style;
	private String TransportTime;
	private String Phone;
	private String Link;
	private String IssueDate;
	private String Remark;
	private String Request;
	private String UserName;
	public Goodsmeg() {
		super();
	}



	public Goodsmeg(String goodsStyle, String goodsName, String goodsNumber, String goodsUnit, String startOmit,
			String startCity, String endOmit, String endCity, String style, String transportTime, String phone,
			String link, String remark, String request,int iD) {
		super();
		ID = iD;
		GoodsStyle = goodsStyle;
		GoodsName = goodsName;
		GoodsNumber = goodsNumber;
		GoodsUnit = goodsUnit;
		StartOmit = startOmit;
		StartCity = startCity;
		EndOmit = endOmit;
		EndCity = endCity;
		Style = style;
		TransportTime = transportTime;
		Phone = phone;
		Link = link;
		Remark = remark;
		Request = request;
	}



	public Goodsmeg( String goodsStyle, String goodsName, String goodsNumber, String goodsUnit, String startOmit,
			String startCity, String endOmit, String endCity, String style, String transportTime, String phone,
			String link,String remark, String request,String issueDate, String userName) {
		super();
		
		GoodsStyle = goodsStyle;
		GoodsName = goodsName;
		GoodsNumber = goodsNumber;
		GoodsUnit = goodsUnit;
		StartOmit = startOmit;
		StartCity = startCity;
		EndOmit = endOmit;
		EndCity = endCity;
		Style = style;
		TransportTime = transportTime;
		Phone = phone;
		Link = link;
		IssueDate = issueDate;
		Remark = remark;
		Request = request;
		UserName = userName;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getGoodsStyle() {
		return GoodsStyle;
	}
	public void setGoodsStyle(String goodsStyle) {
		GoodsStyle = goodsStyle;
	}
	public String getGoodsName() {
		return GoodsName;
	}
	public void setGoodsName(String goodsName) {
		GoodsName = goodsName;
	}
	public String getGoodsNumber() {
		return GoodsNumber;
	}
	public void setGoodsNumber(String goodsNumber) {
		GoodsNumber = goodsNumber;
	}
	public String getGoodsUnit() {
		return GoodsUnit;
	}
	public void setGoodsUnit(String goodsUnit) {
		GoodsUnit = goodsUnit;
	}
	public String getStartOmit() {
		return StartOmit;
	}
	public void setStartOmit(String startOmit) {
		StartOmit = startOmit;
	}
	public String getStartCity() {
		return StartCity;
	}
	public void setStartCity(String startCity) {
		StartCity = startCity;
	}
	public String getEndOmit() {
		return EndOmit;
	}
	public void setEndOmit(String endOmit) {
		EndOmit = endOmit;
	}
	
	public String getEndCity() {
		return EndCity;
	}
	public void setEndCity(String endCity) {
		EndCity = endCity;
	}
	public String getStyle() {
		return Style;
	}
	public void setStyle(String style) {
		Style = style;
	}
	public String getTransportTime() {
		return TransportTime;
	}
	public void setTransportTime(String transportTime) {
		TransportTime = transportTime;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getLink() {
		return Link;
	}
	public void setLink(String link) {
		Link = link;
	}
	public String getIssueDate() {
		return IssueDate;
	}
	public void setIssueDate(String issueDate) {
		IssueDate = issueDate;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	public String getRequest() {
		return Request;
	}
	public void setRequest(String request) {
		Request = request;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	@Override
	public String toString() {
		return "Goodsmeg [ID=" + ID + ", GoodsStyle=" + GoodsStyle + ", GoodsName=" + GoodsName + ", GoodsNumber="
				+ GoodsNumber + ", GoodsUnit=" + GoodsUnit + ", StartOmit=" + StartOmit + ", StartCity=" + StartCity
				+ ", EndOmit=" + EndOmit + ", EndCity=" + EndCity + ", Style=" + Style + ", TransportTime="
				+ TransportTime + ", Phone=" + Phone + ", Link=" + Link + ", IssueDate=" + IssueDate + ", Remark="
				+ Remark + ", Request=" + Request + ", UserName=" + UserName + "]";
	}

	
}
