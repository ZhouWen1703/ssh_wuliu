package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.models.Goodsmeg;

@Repository("goodsmegDao")
public class GoodsmegDaoImpl implements GoodsmegDao {

	private SessionFactory sessionFactory;

	@Autowired
	@Qualifier("sessionFactory")
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<Goodsmeg> getAll() {
		// TODO Auto-generated method stub

		String hql = "from Goodsmeg";
		@SuppressWarnings("unchecked")
		List<Goodsmeg> list = getSession().createQuery(hql).list();
		return list;
	}

	@Override
	public List<Goodsmeg> getAll(int start, int count) {
		// TODO Auto-generated method stub

		String hql = "from Goodsmeg order by issuedate desc";
		@SuppressWarnings("unchecked")
		List<Goodsmeg> list = getSession().createQuery(hql).setFirstResult(start).setMaxResults(count).list();

		return list;
	}

	@Override
	public List<Goodsmeg> getGoods(int ID) {
		// TODO Auto-generated method stub
		String hql = "from Goodsmeg where ID=?";
		@SuppressWarnings("unchecked")
		List<Goodsmeg> list = getSession().createQuery(hql).setInteger(0, ID).list();

		return list;

	}
}
