package com.services;

import com.models.Bendi;

public interface BendiServices {
	public boolean add(Bendi b);
	public String spwd(Bendi b);
	public boolean sLogin(Bendi b);
	public boolean sName(String name);
}
