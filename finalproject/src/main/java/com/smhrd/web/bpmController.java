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
}
