package com.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dao.GoodsDao;
import com.models.Goodsmeg;

@Service("goodsServices")
public class GoodsServicesImpl implements GoodsServices{
	private GoodsDao goodsDao;

	@Autowired
	@Qualifier("goodsDao")
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	
	
	@Override
	public boolean add(Goodsmeg gds) {
		// TODO Auto-generated method stub
		return goodsDao.addGoods(gds);
	}

	@Override
	public boolean update(Goodsmeg gds) {
		// TODO Auto-generated method stub
		return goodsDao.updateGoods(gds);
	}
	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return goodsDao.deleteGoods(id);
	}
	
}
