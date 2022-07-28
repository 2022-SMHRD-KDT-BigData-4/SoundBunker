package com.smhrd.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class bpmController {
	
	@RequestMapping("/title.do")
	public String title(Model model) {
		return "title";
	}
	
	@RequestMapping("/main2.do")
	public String main(Model model) {
		return "main";
	}
	@RequestMapping("/login.do")
	public String login(Model model) {
		return "login";
	}
	/*
	 * @RequestMapping("/signin.do") public String mainlogin(Model model) {
	 * if(loginmember != null) { return "mainlogin"; } else { return "main"; } }
	 */
}
