package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dao.GoodsmegDao;
import com.models.Goodsmeg;
import com.models.Page;


@Service("goodsmegServices")
public class GoodsmegServicesImpl implements GoodsmegServices {
	private GoodsmegDao goodsmegDao;
	
	@Autowired
	@Qualifier("goodsmegDao")
	public void setGoodsmegDao(GoodsmegDao goodsmegDao) {
		this.goodsmegDao = goodsmegDao;
	}

	@Override
	public List<Goodsmeg> All() {
		// TODO Auto-generated method stub
		return goodsmegDao.getAll();
	}

	@Override
	public Page All(int currPageNum, int pagesize) {
		// TODO Auto-generated method stub
		Page p = new Page(currPageNum,pagesize);
		List rs = goodsmegDao.getAll(p.getStartIndex(), p.getPagesize());
		p.setList(rs);
		p.setTotal(goodsmegDao.getAll().size());
		return  p;
	}
@Override
public List<Goodsmeg> get(int ID) {
	// TODO Auto-generated method stub
	return goodsmegDao.getGoods(ID);
}
}
