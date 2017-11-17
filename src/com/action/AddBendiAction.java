package com.action;

import java.io.UnsupportedEncodingException;

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

@Controller("addBendiAction")
@Scope("prototype")
public class AddBendiAction extends ActionSupport{

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
	
	
	@SuppressWarnings("unused")
	public String add() throws UnsupportedEncodingException{

		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		request.setCharacterEncoding("utf-8");
		String str1 = request.getParameter("name");
		String str2 = request.getParameter("pwd1");
		String str3 = request.getParameter("sex");
		String str4 = request.getParameter("tel");
		String str5 = request.getParameter("email");
		String str6 = request.getParameter("question");
		String str7 = request.getParameter("answer");
		boolean flg=bendiServices.add(new Bendi(str1,str2,str3,str4,str5,str6,str7));
		if(flg){
			return SUCCESS;
		}	
		return null;
	}
}
