package com.skilldistillery.boondock.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.boondock.entities.Boondock;

@Service
@Transactional
public class BoondockDaoJpalmp implements BoondockDAO {

	@PersistenceContext
	private EntityManager em;
	//private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("BoondockPU");

	@Override
	public Boondock findById(int id) {
		return em.find(Boondock.class, id);
	}

	@Override
	public Boondock createBoondock(Boondock newBoondock) {
		// start transaction
	//	em = emf.createEntityManager();
		//em.getTransaction().begin();
		// save to database
		em.persist(newBoondock);
		em.flush();

		//em.getTransaction().commit();

		return newBoondock;
	}

}
