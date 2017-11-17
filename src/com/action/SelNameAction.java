package com.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.models.Bendi;
import com.opensymphony.xwork2.ActionSupport;
import com.services.BendiServices;

@Controller("selNameAction")
@Scope("prototype")
public class SelNameAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Bendi bendi;
	
	private BendiServices bendiServices;
	
	
	public Bendi getBendi() {
		return bendi;
	}

	public void setBendi(Bendi bendi) {
		this.bendi = bendi;
	}

	@Autowired
	@Qualifier("bendiServices")
	public void setBendiServices(BendiServices bendiServices) {
		this.bendiServices = bendiServices;
	}
	
	
	public void selname() throws IOException{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		String str1=request.getParameter("name");
		boolean flg=bendiServices.sName(str1);
		if(flg){
			 response.getWriter().println("*用户名已被占用");
		}else{
			response.getWriter().println("*用户名可用");
		}
	}
}
