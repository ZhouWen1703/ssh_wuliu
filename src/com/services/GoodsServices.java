package com.services;

import com.models.Goodsmeg;

public interface GoodsServices {
	public boolean add(Goodsmeg gds);
	public boolean update(Goodsmeg gds);
	public boolean delete(int id);
}
