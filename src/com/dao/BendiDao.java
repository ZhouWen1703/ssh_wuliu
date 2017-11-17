package com.dao;

import com.models.Bendi;

public interface BendiDao {
	public boolean addBendi(Bendi b);
	public String selpwd(Bendi b);
	public boolean selLogin(Bendi b);
	public boolean selName(String name);
}
