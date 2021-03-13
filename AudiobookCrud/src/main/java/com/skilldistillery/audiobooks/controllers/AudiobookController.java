package com.skilldistillery.audiobooks.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.audiobooks.data.AudiobookDAO;
import com.skilldistillery.audiobooks.entities.Audiobook;

@Controller
public class AudiobookController {
	@Autowired
	private AudiobookDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		return "index";
	}

	@RequestMapping(path = "getBook.do")
	public String showFilm(Integer fid, Model model) {
		Audiobook ab = dao.findById(fid);
		model.addAttribute("list", ab);
		return "Audiobook/show";
	}

	@RequestMapping(path = "list.do")
	public String listBooks(Model model) {
		List<Audiobook> ab = dao.findAll();
		model.addAttribute("bookList", ab);
		return "Audiobook/library";
	}

}
