package com.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.models.Goodsmeg;
import com.opensymphony.xwork2.ActionSupport;
import com.services.GoodsServices;

@Controller("addGoodsAction")
@Scope("prototype")
public class AddGoodsAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private Goodsmeg goodsmeg;
		private GoodsServices goodsServices;

		@Autowired
		@Qualifier("goodsServices")
		public void setGoodsServices(GoodsServices goodsServices) {
			this.goodsServices = goodsServices;
		}

		public Goodsmeg getGoodsmeg() {
			return goodsmeg;
		}

		public void setGoodsmeg(Goodsmeg goodsmeg) {
			this.goodsmeg = goodsmeg;
		}
		
		
		public String add() throws IOException{
			HttpServletRequest request=ServletActionContext.getRequest();

			request.setCharacterEncoding("utf-8");
			String str1=request.getParameter("gclass");
			String str2=request.getParameter("gname");
			String str3=request.getParameter("gcount");
			String str4=request.getParameter("gunit");
			String str5=request.getParameter("gstartfirm");
			String str6=request.getParameter("gstartcity");
			String str7=request.getParameter("gendfirm");
			String str8=request.getParameter("gendcity");
			String str9=request.getParameter("gtransstyle");
			String str10=request.getParameter("gtime");
			String str11=request.getParameter("gphone");
			String str12=request.getParameter("glink");
			String str13=request.getParameter("gremark");
			String str14=request.getParameter("grequest");
			Date d = new Date();
			String str15=d.toLocaleString();
			String str16=request.getParameter("username");
			boolean flg = goodsServices.add(new Goodsmeg(str1,str2,str3,str4,str5,str6,str7,str8,str9
					,str10,str11,str12,str13,str14,str15,str16));
			if(flg){
			return SUCCESS;
			}
			return null;
		}
		
}
