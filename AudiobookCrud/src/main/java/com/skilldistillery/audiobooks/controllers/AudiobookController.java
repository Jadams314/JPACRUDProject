package com.skilldistillery.audiobooks.controllers;

import java.beans.PropertyEditorSupport;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@RequestMapping(path = { "creation.do" })
	public String creationPage(Model model) {
		return "Audiobook/creation";
	}
	

	@RequestMapping(path = "getBook.do")
	public String showFilm(Integer bid, Model model) {
		Audiobook ab = dao.findById(bid);
		model.addAttribute("audiobook", ab);
		return "Audiobook/show";
	}
	@RequestMapping(path = "getAuthor.do")
	public String showFilm(String search, Model model) {
		List<Audiobook> ab = dao.findByAuthor(search);
		model.addAttribute("bookList", ab);
		return "Audiobook/library";
	}

	@RequestMapping(path = "list.do")
	public String listBooks(Model model) {
		List<Audiobook> ab = dao.findAll();
		model.addAttribute("bookList", ab);
		return "Audiobook/library";
	}
	
	@RequestMapping(path = "create.do")
	public String create(Model model, Audiobook ab) {
		model.addAttribute("newbook", dao.create(ab));
		return "Audiobook/show";
	}
	@RequestMapping(path = "destroy.do", params = "bookid", method = RequestMethod.POST)
	public String destroy(Model model, Integer bookid) {
		dao.destroy(bookid);
		return "index";
	}
	
	@RequestMapping(path = "update.do", params = "bookid", method = RequestMethod.GET)
	public String goToUpdatePage(Integer bookid, Model model) {
		Audiobook ab = dao.findById(bookid);
		model.addAttribute("audiobook", ab);
		return "Audiobook/updateBook";
	}
	
	@RequestMapping(path = "bookUpdated.do",  method = RequestMethod.POST)
	public String updateBook(Audiobook book, Model model, RedirectAttributes redir) {
		dao.update(book.getId(), book);
		model.addAttribute("audiobook", book);
		return "Audiobook/show";
	}
	
	
	// Converts String dates to LocalDate
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
		webDataBinder.registerCustomEditor(LocalDate.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(LocalDate.parse(text, DateTimeFormatter.ofPattern("yyyy-MM-dd")));
			}
			@Override
			public String getAsText() throws IllegalArgumentException {
				return DateTimeFormatter.ofPattern("yyyy-MM-dd").format((LocalDate) getValue());
			}
		});
	}
	
}
