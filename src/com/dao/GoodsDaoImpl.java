package com.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.models.Goodsmeg;

@Repository("goodsDao")
public class GoodsDaoImpl implements GoodsDao {
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
	public boolean addGoods(Goodsmeg gds) {
		// TODO Auto-generated method stub
		getSession().save(gds);
		return true;
	}

	@Override
	public boolean updateGoods(Goodsmeg gds) {
		// TODO Auto-generated method stub
		Goodsmeg gg = (Goodsmeg) getSession().get(Goodsmeg.class, gds.getID());
		gg.setGoodsName(gds.getGoodsName());
		gg.setGoodsStyle(gds.getGoodsStyle());
		gg.setGoodsNumber(gds.getGoodsNumber());
		gg.setGoodsUnit(gds.getGoodsUnit());
		gg.setEndCity(gds.getEndCity());
		gg.setStartCity(gds.getStartCity());
		gg.setEndOmit(gds.getEndOmit());
		gg.setStartOmit(gds.getStartOmit());
		gg.setStyle(gds.getStyle());
		gg.setIssueDate(gds.getIssueDate());
		gg.setLink(gds.getLink());
		gg.setPhone(gds.getPhone());
		gg.setRemark(gds.getRemark());
		gg.setRequest(gds.getRequest());
		gg.setTransportTime(gds.getTransportTime());
		gg.setUserName(gds.getUserName());
		getSession().update(gg);

		return true;

	}

	@Override
	public boolean deleteGoods(int id) {
		// TODO Auto-generated method stub
		Goodsmeg gg = (Goodsmeg) getSession().get(Goodsmeg.class, id);
		getSession().delete(gg);
		return true;

	}
}
