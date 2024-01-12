package com.codingdojo.spring.dojosandninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.spring.dojosandninjas.models.Dojo;
import com.codingdojo.spring.dojosandninjas.models.Ninja;
import com.codingdojo.spring.dojosandninjas.services.DojoService;

@Controller
public class DojoController {
	
	@Autowired
	DojoService dojoService;
	
	@GetMapping("/")
	public String index(Model model) {
		List<Dojo> dojos = dojoService.findAll(); 
		model.addAttribute("dojo", dojos);
		return "index.jsp";
	}
	
	@GetMapping("/dojos/new")
	public String createDojoPage(@ModelAttribute("dojo") Dojo dojo) {
		return "newdojo.jsp";
	}
	
	@PostMapping("/dojos/new")
	public String createDojo(@ModelAttribute("dojo") Dojo dojo) {
		
		dojoService.createDojo(dojo);
		return "redirect:/";	
	}
	
	@GetMapping("/ninjas/new")
	public String createNinjaPage(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojos = dojoService.findAll(); 
		model.addAttribute("dojo", dojos);
		ninja = dojoService.createNinja(ninja);
		return "newninja.jsp";
	}
	
	@PostMapping("/ninjas/new")
	public String createNinja(@ModelAttribute("ninja") Ninja ninja) {
		dojoService.createNinja(ninja);
		return "redirect:/";
	}
	
	@GetMapping("/dojos/{id}")
	public String dojoLocationPage(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoService.findDojo(id);

		model.addAttribute("ninjas", dojo.getNinjas());
		model.addAttribute("dojo", dojo);
		return "location.jsp";
	}
	
}
