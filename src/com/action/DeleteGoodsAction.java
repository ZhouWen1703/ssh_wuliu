package com.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.models.Goodsmeg;
import com.opensymphony.xwork2.ActionSupport;
import com.services.GoodsServices;

@Controller("deleteGoodsAction")
@Scope("prototype")
public class DeleteGoodsAction extends ActionSupport {

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
	
	public void delete() throws IOException{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		String str = request.getParameter("id");
		int id=Integer.parseInt(str);
		boolean flg=goodsServices.delete(id);
		if(flg){
			response.getWriter().println("true");
		}
	}

}
