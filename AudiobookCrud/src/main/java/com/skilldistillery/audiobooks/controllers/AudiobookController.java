package com.skilldistillery.audiobooks.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
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
	
//	@RequestMapping(path="goToUpdatePage.do", params = "filmid")
//	public ModelAndView goToUpdate(Integer filmid) {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/views/updateFilm.jsp");
//		mv.addObject(filmDAO.findFilmById(filmid));
//		return mv;
//	}
//	
//	@RequestMapping(path="UpdateFilm.do", method= RequestMethod.POST)
//		filmDAO.updateFilm(film);
//		ModelAndView mv = new ModelAndView();
//		redir.addFlashAttribute("film", film);
//		mv.setViewName("redirect:filmUpdated.do");
//		return mv;
//	}
//	@RequestMapping(path="filmUpdated.do", method= RequestMethod.GET)
//	public String refreshFilm(Model model) {
//		return "WEB-INF/views/Film.jsp";
//	}
	
}
