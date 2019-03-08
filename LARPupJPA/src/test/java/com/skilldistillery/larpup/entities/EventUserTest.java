package com.skilldistillery.larpup.entities;

import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

@DisplayName("event user tests")
class EventUserTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private EventUser eventUser;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("LARPupJPA");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		eventUser = em.find(EventUser.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		eventUser = null;
	}

	@Test
	void test() {
		fail("Not yet implemented");
	}

}
