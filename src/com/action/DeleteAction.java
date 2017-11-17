package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller("deleteAction")
public class DeleteAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void del(){
		HttpServletRequest req= ServletActionContext.getRequest();
		HttpSession session=req.getSession();
		session.removeAttribute("s");
		
	}

}
