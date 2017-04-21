package com.indivaragroup.training.jsp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PagesController {

	@RequestMapping(path="/workspace")
	public String openWorkspace(@RequestParam(name="myname", 
		defaultValue="null") String myName, Model model, HttpSession session){
		model.addAttribute("message", "Hello!");
		if (session.getAttribute("currentName") == null){
			session.setAttribute("currentName", myName);
		}
		return "workspace";
	}
	
	@RequestMapping(path="/details")
	public String openDetails(){
		return "details";
	}
}
