package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import com.models.Page;
import com.opensymphony.xwork2.ActionSupport;
import com.services.GoodsmegServices;

@Controller("goodsmegAction")
public class GoodsmegAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private GoodsmegServices  goodsmegServices;

	@Autowired
	@Qualifier("goodsmegServices")
	public void setGoodsmegServices(GoodsmegServices goodsmegServices) {
		this.goodsmegServices = goodsmegServices;
	}
	
	
	public String selGoodsmeg(){
		HttpServletRequest request=ServletActionContext.getRequest();
		
		String act = request.getParameter("act");
		int n=Integer.parseInt(act);
		
		int currentNum=n;	
		int pagesize=4;

		Page p= goodsmegServices.All(currentNum, pagesize);
		HttpSession session = request.getSession();
		session.setAttribute("page", p);
		request.setAttribute("currentNum", currentNum);
		return SUCCESS;

	}

}

