package com.dqdg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FirstController {
@RequestMapping("index")
public ModelAndView index(){
	ModelAndView mav = new ModelAndView();
	mav.addObject("hello", "Hello world!");
	mav.setViewName("index");
	return mav;
}
}
