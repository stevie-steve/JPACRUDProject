package com.skilldistillery.boondock.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.boondock.data.BoondockDAO;
import com.skilldistillery.boondock.entities.Boondock;

@Controller
public class BoondockController {
	@Autowired
	private BoondockDAO dao;

	@RequestMapping(path = "getBoondock.do")
	public ModelAndView searchById() throws SQLException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("searchById");
		return mv;
	}

	@RequestMapping(path = "getBoondockById.do")
	public String FindBoondock(@RequestParam("id") Integer bid, Model model) {
		Boondock b = dao.findById(bid);
		model.addAttribute("boondock", b);
		return "BoondockDetail";
	}

	@RequestMapping(path = "addBoondock.do", method = RequestMethod.GET)
	public ModelAndView addBoondockView() throws SQLException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addBoondock");
		return mv;
	}

	@RequestMapping(path = "addBoondock.do", method = RequestMethod.POST)
	public ModelAndView addTheBoondock(Boondock b) {
		ModelAndView mv = new ModelAndView();
			Boondock newBoondock = dao.createBoondock(b);
			mv.addObject("boondock", newBoondock);
			if (b != null && b.getName() != "" && b.getLocation() != "") {
				mv.setViewName("BoondockDetail");
			return mv;
		} else {
			mv.setViewName("error");
			return mv;
		}
	}

}
