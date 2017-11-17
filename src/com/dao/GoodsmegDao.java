package com.dao;

import java.util.List;

import com.models.Goodsmeg;

public interface GoodsmegDao {
	public List<Goodsmeg> getAll();
	public List<Goodsmeg> getAll(int start,int count);
	public List<Goodsmeg> getGoods(int ID);
}
