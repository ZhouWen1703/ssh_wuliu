package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.models.Active;
import com.models.Page;
import com.opensymphony.xwork2.ActionSupport;
import com.services.ActiveServices;


@Controller("activeAction")
@Scope("prototype")
public class ActiveAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Active active;
	
	private ActiveServices activeServices;

	public Active getActive() {
		return active;
	}

	public void setActive(Active active) {
		this.active = active;
	}


	@Autowired
	@Qualifier("activeServices")
	public void setActiveServices(ActiveServices activeServices) {
		this.activeServices = activeServices;
	}

	public String sActive() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String act = request.getParameter("act");
		int n=Integer.parseInt(act);
		int currentNum=n;	
		int pagesize=4;

		Page p = activeServices.All(currentNum, pagesize);
		HttpSession session = request.getSession();
		session.setAttribute("page", p);
		return "success";

	}




}
