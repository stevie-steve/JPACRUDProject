package com.skilldistillery.boondock.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.boondock.entities.Boondock;

@Service
@Transactional
public class BoondockDaoJpalmp implements BoondockDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Boondock findById(int id) {
		return em.find(Boondock.class, id);

	}

}
