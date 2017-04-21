package com.indivaragroup.training.jsp.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.indivaragroup.training.jsp.model.TrxPay;

@Controller
public class WorkspaceController {

	@RequestMapping(path="/workspace")
	public String openWorkspace(Model model, TrxPay trxPay){
		model.addAttribute("message", "Hello!");
		model.addAttribute("trx", trxPay);
		return "workspace";
	}

	@InitBinder
	public void dateBinder(WebDataBinder binder){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HH.mm.ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat , true));
		
	}
}
