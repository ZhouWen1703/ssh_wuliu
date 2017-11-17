package com.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.models.Bendi;
import com.opensymphony.xwork2.ActionSupport;
import com.services.BendiServicesImpl;
import com.services.BendiServices;

@Controller("loginAction")
@Scope("prototype")
public class LoginAction extends ActionSupport {
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

	public void login() throws IOException{	

		HttpServletRequest req=ServletActionContext.getRequest();
		HttpServletResponse res=ServletActionContext.getResponse();
		res.setCharacterEncoding("utf-8");
		String str1 = req.getParameter("name");
		String str2 = req.getParameter("pwd");
		boolean flg=bendiServices.sLogin(new Bendi(str1,str2));
		
		if(flg){
			HttpSession session = req.getSession();
			session.setAttribute("s", str1);
			res.getWriter().println("欢迎"+session.getAttribute("s"));
			
		}else{
			res.getWriter().println("用户名或密码错误");
			
		}
	}
	

}
