package com.services;

import java.util.List;

import com.models.Goodsmeg;
import com.models.Page;

public interface GoodsmegServices {
	public List<Goodsmeg> All();
	public Page All(int currPageNum, int pagesize);
	public List<Goodsmeg> get(int ID);
}
