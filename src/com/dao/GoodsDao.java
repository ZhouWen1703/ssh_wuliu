package com.dao;

import com.models.Goodsmeg;

public interface GoodsDao {
	public boolean addGoods(Goodsmeg gds);
	public boolean updateGoods(Goodsmeg gds);
	public boolean deleteGoods(int id);
}
