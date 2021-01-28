package io.namoosori.travelclub.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import io.namoosori.travelclub.entity.TravelClub;
import io.namoosori.travelclub.service.ClubService;

@RequestMapping(value = {"/" , "/club"})
@Controller
public class ClubController {

	private ClubService clubService;
	
	ClubController(ClubService clubService){
		this.clubService = clubService;
	}
	
//	@RequestMapping(value= {"/"}) 옛날 방식
	@GetMapping("/")
	public ModelAndView showList() {
		List<TravelClub> clubList = clubService.findAll();
		
		ModelAndView modelAndView = new ModelAndView("club-list.jsp");
		modelAndView.addObject("clubList", clubList);
		
		return modelAndView;
	}
	
	@PostMapping("/retrieveByName")
	public ModelAndView showListByName(String name) {
		List<TravelClub> clubList = clubService.findByName(name);
		
		ModelAndView modelAndView = new ModelAndView("/club-list.jsp");
		modelAndView.addObject("clubList", clubList);
		
		return modelAndView;
	}
	
	@GetMapping("/register")
	public String showRegister() {
		return "redirect:/club-register.jsp"; //갈 위치와 방식만 return
	}
	
	@PostMapping("/register")
	public String register(TravelClub club) {
		
		clubService.register(club);
		return "redirect:/";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("name") String name){
		
		clubService.delete(name);
		
		return "redirect:/";
	}
	
	@GetMapping("/detail")
	public ModelAndView showDetail(@RequestParam("name") String name){
		
		TravelClub club = clubService.find(name);
		
		ModelAndView modelAndView = new ModelAndView("/club-detail.jsp");
		modelAndView.addObject("foundClub",club);
		return modelAndView;
	}
	
	@GetMapping("/modify")
	public ModelAndView showModify(@RequestParam("name") String name){
		
		TravelClub club = clubService.find(name);
		
		ModelAndView modelAndView = new ModelAndView("/club-modify.jsp");
		modelAndView.addObject("foundClub",club);
		return modelAndView;
	}
	
	@PostMapping("/modify")
	public String Modify(TravelClub club){
		
		clubService.modify(club);
		
		return "redirect:/club/detail?name="+club.getName();
	}
	
}
