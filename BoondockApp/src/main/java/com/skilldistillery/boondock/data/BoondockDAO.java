package com.skilldistillery.boondock.data;

import com.skilldistillery.boondock.entities.Boondock;

public interface BoondockDAO {
	public Boondock findById(int id);

	public Boondock createBoondock(Boondock newBoondock);

	Boondock updateBoondock(int id, Boondock boondock);

	boolean destroyBoondock(int id);
	
}
