package com.spring.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/sales/*")
public class SalesController {
	@GetMapping(value="sales_creation")
	public void sales_creation() {
		log.info("매출등록 페이지");
		
	}
	@GetMapping(value="sales_ledger")
	public void sales_ledger() {
		log.info("매출원장 페이지");
		
	}
	@GetMapping(value="sales_exception_price")
	public void sales_exception_price() {
		log.info("판가관리 페이지");
		
	}
	@GetMapping(value="accounts_payable")
	public void accounts_payable() {
		log.info("미수금 페이지");
		
	}
	
}
