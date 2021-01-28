package io.namoosori.travelclub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import io.namoosori.travelclub.entity.ClubMember;
import io.namoosori.travelclub.service.MemberService;

@RequestMapping(value = {"/" , "/member"})
@Controller
public class MemberController {

	private MemberService memberService;
	
	MemberController(MemberService memberService){
		this.memberService = memberService;
	}
	
	@PostMapping("/signin")
	public String signIn(ClubMember member) {
		String location = "";
		if(memberService.signIn(member)) {
			
		}else {
			
		}
		return location;
	}
	
	@GetMapping("/register")
	public String showRegister() {
		return "redirect:/member-register.jsp"; //갈 위치와 방식만 return
	}
	
	@PostMapping("/register")
	public String register(ClubMember member) {
		memberService.register(member);
		return "redirect:/";
	}
	
	@GetMapping("/detail")
	public ModelAndView showDetail(@RequestParam("email") String email){
		
		ClubMember member = memberService.find(email);
		
		ModelAndView modelAndView = new ModelAndView("/member-detail.jsp");
		modelAndView.addObject("foundMember",member);
		return modelAndView;
	}
	
	@GetMapping("/modify")
	public ModelAndView showModify(@RequestParam("email") String email){
		
		ClubMember member = memberService.find(email);
		
		ModelAndView modelAndView = new ModelAndView("/member-modify.jsp");
		modelAndView.addObject("foundMember",member);
		return modelAndView;
	}
	
	@PostMapping("/modify")
	public String Modify(ClubMember member){
		
		memberService.modify(member);
		
		return "redirect:/member/detail?eamil="+member.getEmail();
	}
}
