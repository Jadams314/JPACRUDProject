package com.skilldistillery.audiobooks.entities;


import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Audiobook {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;
	private String description;
	private String author;
	private String narrator;
	private Double length;
	@Column(name="release_date")
	private LocalDate releaseDate;

	public Audiobook() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getNarrator() {
		return narrator;
	}

	public void setNarrator(String narrator) {
		this.narrator = narrator;
	}

	public double getLength() {
		return length;
	}

	public void setLength(Double length) {
		this.length = length;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Audiobook [id=");
		builder.append(id);
		builder.append(", title=");
		builder.append(title);
		builder.append(", author=");
		builder.append(author);
		builder.append(", narrator=");
		builder.append(narrator);
		builder.append(", length=");
		builder.append(length);
		builder.append(", description=");
		builder.append(description);
		builder.append(", releaseDate=");
		builder.append(releaseDate);
		builder.append("]");
		return builder.toString();
	}



}

