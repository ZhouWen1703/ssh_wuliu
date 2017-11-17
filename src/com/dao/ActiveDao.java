package com.dao;

import java.util.List;

import com.models.Active;

public interface ActiveDao {
	public List<Active> getAll();
	public List<Active> getAll(int start,int count);
}
