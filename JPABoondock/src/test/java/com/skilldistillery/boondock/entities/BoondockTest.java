package com.skilldistillery.boondock.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class BoondockTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Boondock boondock;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BoondockPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		boondock = em.find(Boondock.class, 1);

	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		boondock = null;
	}

	@Test
	@DisplayName("test entity mapping")
	void test() {
		assertNotNull(boondock);
		assertNotNull("", boondock.getName());	
	assertEquals("New Growth", boondock.getName());
	assertEquals(true, boondock.isFree());
	assertEquals("Woodland Park, Colorado", boondock.getLocation());
	assertEquals("39.096284", boondock.getGpsLatitude());
	assertEquals("-105.135251", boondock.getGpsLongitude());
	assertEquals(8507, boondock.getElevation());
	assertEquals("Public - Forest Service", boondock.getManagement());
	assertEquals("RV, Parking, TentCamping, Hiking, Wildlife, Viewing", boondock.getActivities());
	assertEquals(3.92, boondock.getAverageRating());
	assertEquals(12, boondock.getNumberOfReviews());
    assertEquals("https://www.google.com/maps/dir//39.096284,-105.135251/@39.0962622,-105.1359082,18.93z", boondock.getMapImage());
	assertEquals("https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png", boondock.getCurrentWeather());
	assertEquals(14, boondock.getLengthOfAllowedStay());
	assertEquals("https://freecampsites.net/wp-content/uploads/2018/06/20180608_200441-800x450.jpg", boondock.getPhoto());
	
	}
	


}
