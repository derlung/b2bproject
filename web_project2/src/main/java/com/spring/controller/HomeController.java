package com.spring.controller;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.service.MainViewService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	public MainViewService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("로그인 페이지");

		
		return "view/login";
	}
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		log.info("메인 페이지");
		try {
			model.addAttribute("chart2", service.chart2());
			model.addAttribute("chart1", service.chart1());
			model.addAttribute("getMonthSum", service.getMonthSum());
			model.addAttribute("getDaySum", service.getDaySum());
			model.addAttribute("getMonthTeam", service.getMonthTeam());
			model.addAttribute("getDayTeam", service.getDayTeam());
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return "view/main";
		
	}
	
	
	
	
	@RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
	public String forgotpw(Locale locale, Model model) {
		log.info("비밀번호찾기 페이지");
		
		return "view/forgot-password";
	}
	
}
