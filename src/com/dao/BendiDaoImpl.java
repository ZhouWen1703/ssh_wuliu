package com.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.models.Bendi;

@Repository("bendiDao")
public class BendiDaoImpl implements BendiDao {
	private SessionFactory sessionFactory;
	
	@Autowired
	@Qualifier("sessionFactory")
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getSession(){
		return sessionFactory.getCurrentSession();
		
	}

	@Override
	public boolean addBendi(Bendi b) {
		// TODO Auto-generated method stub
			getSession().save(b);
			return true;
		}
		

	@Override
	public String selpwd(Bendi b) {
		// TODO Auto-generated method stub
		
			String hql = "select pwd from Bendi where wname=? and email=? and question=? and answer=? ";
			@SuppressWarnings("unchecked")
			List<String> list=getSession().createQuery(hql)
										.setString(0, b.getWname())
										.setString(1, b.getEmail())
										.list();
			
			if(list.size()>0){
				String str=null;
				for(String s:list){
					 str= s;
					 return s;
				}
			}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean selLogin(Bendi b) {
		// TODO Auto-generated method stub
		
			String hql = "select new Bendi(wname,pwd) from Bendi where wname=? and pwd=?";
			List<Bendi> list=getSession().createQuery(hql)
										.setString(0, b.getWname())
										.setString(1, b.getPwd())
										.list();
			

			if (list.size()>0) {
				return true;
			}
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean selName(String name) {
		// TODO Auto-generated method stub

			String hql = "select wname from Bendi where wname=?";
			List<String> list=getSession().createQuery(hql)
								.setString(0,name)
								.list();
			

			if (list.size()>0) {
				return true;
			}
		return false;
	}
}
