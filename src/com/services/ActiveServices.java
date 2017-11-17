package com.services;

import java.util.List;

import com.models.Active;
import com.models.Page;

public interface ActiveServices {
	public List<Active> All();
	public Page All(int currPageNum, int pagesize);
}
