package com.skilldistillery.audiobooks.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.audiobooks.entities.Audiobook;

@Service
@Transactional
public class AudiobookDAOJpaImpl implements AudiobookDAO {
	static private EntityManagerFactory emf = Persistence.createEntityManagerFactory("Audiobook");

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Audiobook findById(int bookId) {
		return em.find(Audiobook.class, bookId);
	}

	@Override
	public List<Audiobook> findAll() {
		String query = "SELECT a FROM Audiobook a";
		List<Audiobook> list = em.createQuery(query, Audiobook.class).getResultList();
		return list;
	}

	@Override
	public Audiobook create(Audiobook audiobook) {
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		System.out.println("Audiobook data before persost:" + audiobook);
		em.persist(audiobook);
	
		em.flush();
		System.out.println("Audiobook data after persost:" + audiobook);
		
		em.getTransaction().commit();

		// return the Customer object
		em.close();
		return audiobook;
	}

	@Override
	public Audiobook update(int id, Audiobook audiobook) {
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		Audiobook managed = em.find(Audiobook.class, id);
		
		System.out.println("*******Start creation" + audiobook);
		
		managed.setTitle(audiobook.getTitle());
		managed.setDescription(audiobook.getDescription());
		managed.setAuthor(audiobook.getAuthor());
		managed.setNarrator(audiobook.getNarrator());
		managed.setLength(audiobook.getLength());
		managed.setReleaseDate(audiobook.getReleaseDate());
		
		System.out.println("*******End creation" + audiobook);
		
		
		em.getTransaction().commit();
		
		em.close();
		return managed;
	}

	@Override
	public boolean destroy(int id) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		Audiobook a = em.find(Audiobook.class, id);
		
		em.remove(a);
		
		em.getTransaction().commit();
		
		boolean actorWasDeleted = !em.contains(a);
		
		em.close();
		return actorWasDeleted;
	}
	
	

}
