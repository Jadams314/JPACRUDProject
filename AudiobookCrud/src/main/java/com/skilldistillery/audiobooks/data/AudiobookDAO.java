package com.skilldistillery.audiobooks.data;

import java.util.List;

import com.skilldistillery.audiobooks.entities.Audiobook;

public interface AudiobookDAO {
	Audiobook findById(int bookId);
	List<Audiobook> findAll();
	public Audiobook create(Audiobook audiobook);
	public Audiobook update(int id, Audiobook audiobook);
	public boolean destroy(int id);
}
