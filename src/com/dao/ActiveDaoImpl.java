package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.models.Active;

@Repository("activeDao")
public class ActiveDaoImpl implements ActiveDao {
	
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
	public List<Active> getAll() {
		// TODO Auto-generated method stub
		String hql="from Active";
		@SuppressWarnings("unchecked")
		List<Active> list=getSession().createQuery(hql).list();
		return list;
	}

	@Override
	public List<Active> getAll(int start, int count) {
		// TODO Auto-generated method stub
		String hql="from Active  order by issuedate desc";
		@SuppressWarnings("unchecked")
		List<Active> list=getSession().createQuery(hql)
									.setFirstResult(start)
									.setMaxResults(count)
									.list();

		return list;
	}
}
