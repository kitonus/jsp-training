package com.indivaragroup.training.jsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WorkspaceController {

	@RequestMapping(path="/workspace")
	public String openWorkspace(Model model){
		model.addAttribute("message", "Hello!");
		return "workspace";
	}
}
