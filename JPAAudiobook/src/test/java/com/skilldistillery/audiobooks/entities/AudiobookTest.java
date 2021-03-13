package com.skilldistillery.audiobooks.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class AudiobookTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Audiobook ab;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Audiobook");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		ab = em.find(Audiobook.class,1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		ab = null;
	}

	@Test
	void test() {
		assertNotNull(ab);
		assertEquals("hp", ab.getTitle());
	}

}
