package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.services.GoodsmegServices;

@Controller("detailGoodsAction")
@Scope("prototype")
public class DetailGoodsAction extends ActionSupport {

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
	
	public String detail(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String ID = request.getParameter("ID");
		int id=Integer.parseInt(ID);
		List list=goodsmegServices.get(id);
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		return SUCCESS;
	}
}
