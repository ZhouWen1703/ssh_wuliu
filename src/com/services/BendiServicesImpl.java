package com.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dao.BendiDao;


import com.models.Bendi;

@Service("bendiServices")
public class BendiServicesImpl implements BendiServices {
	
	private BendiDao  bendiDao;
	
	
	@Autowired
	@Qualifier("bendiDao")
	public void setBendiDao(BendiDao bendiDao) {
		this.bendiDao = bendiDao;
	}

	@Override
	public boolean add(Bendi b) {
		// TODO Auto-generated method stub
		return bendiDao.addBendi(b);
	}

	@Override
	public String spwd(Bendi b) {
		// TODO Auto-generated method stub
		return bendiDao.selpwd(b);
	}

	@Override
	public boolean sLogin(Bendi b) {
		// TODO Auto-generated method stub
		return bendiDao.selLogin(b);
	}
	@Override
	public boolean sName(String name) {
		// TODO Auto-generated method stub
		return bendiDao.selName(name);
	}
}
