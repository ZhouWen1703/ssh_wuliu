package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ActiveDao;
import com.models.Active;
import com.models.Page;

@Service("activeServices")
public class ActiveServicesImpl implements ActiveServices {
	
	private ActiveDao activeDao;
	
	@Autowired
	@Qualifier("activeDao")
	public void setActiveDao(ActiveDao activeDao) {
		this.activeDao = activeDao;
	}

	@Override
	public List<Active> All() {
		// TODO Auto-generated method stub
		return activeDao.getAll();
	}

	@Override
	public Page All(int currPageNum, int pagesize) {
		// TODO Auto-generated method stub
		Page p = new Page(currPageNum,pagesize);
		List rs = activeDao.getAll(p.getStartIndex(), p.getPagesize());
		p.setList(rs);
		p.setTotal(activeDao.getAll().size());
		return  p;
	}
}
