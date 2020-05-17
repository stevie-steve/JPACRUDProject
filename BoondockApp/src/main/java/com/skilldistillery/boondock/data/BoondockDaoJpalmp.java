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
	// private static EntityManagerFactory emf =
	// Persistence.createEntityManagerFactory("BoondockPU");

	@Override
	public Boondock findById(int id) {
		return em.find(Boondock.class, id);
	}

	@Override
	public Boondock createBoondock(Boondock newBoondock) {
		// start transaction
		// em = emf.createEntityManager();
		// em.getTransaction().begin();
		// save to database
		em.persist(newBoondock);
		em.flush();

		// em.getTransaction().commit();

		return newBoondock;
	}

	@Override
	public Boondock updateBoondock(int id, Boondock boondock) {
		Boondock updatedBoondock = em.find(Boondock.class, id);

		updatedBoondock.setFree(boondock.isFree());
		updatedBoondock.setLocation(boondock.getLocation());
		updatedBoondock.setGpsLatitude(boondock.getGpsLatitude());
		updatedBoondock.setGpsLongitude(boondock.getGpsLongitude());
		updatedBoondock.setElevation(boondock.getElevation());
		updatedBoondock.setManagement(boondock.getManagement());
		updatedBoondock.setActivities(boondock.getActivities());
		updatedBoondock.setAverageRating(boondock.getAverageRating());
		updatedBoondock.setNumberOfReviews(boondock.getNumberOfReviews());
		updatedBoondock.setMapImage(boondock.getMapImage());
		updatedBoondock.setCurrentWeather(boondock.getCurrentWeather());
		updatedBoondock.setLengthOfAllowedStay(boondock.getLengthOfAllowedStay());
		updatedBoondock.setAverageRating(boondock.getAverageRating());
		updatedBoondock.setPhoto(boondock.getPhoto());

		//em.getTransaction().commit();
		 em.close();

		return updatedBoondock;

	}

	@Override
	public boolean destroyBoondock(int id) {
		// EntityManager em = emf.createEntityManager();
		// em.getTransaction().begin();

		Boondock boondock = em.find(Boondock.class, id);
		em.remove(boondock);
		boolean thisWorked = !em.contains(boondock);

		em.flush();
		//em.getTransaction().commit();
		em.close();
		return thisWorked;
	}
}
