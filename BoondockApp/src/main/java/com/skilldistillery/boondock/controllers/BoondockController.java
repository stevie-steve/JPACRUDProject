package com.skilldistillery.boondock.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.boondock.data.BoondockDAO;
import com.skilldistillery.boondock.entities.Boondock;

@Controller
public class BoondockController {
	@Autowired
	private BoondockDAO dao;

	@RequestMapping(path = "getBoondock.do")
	public String FindBoondock(@RequestParam Integer bid, Model model) {
		Boondock b = dao.findById(bid);
		model.addAttribute("boondock", b);
		return "BoondockDetail";
	}
}
