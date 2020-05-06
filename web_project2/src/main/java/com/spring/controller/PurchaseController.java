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
@RequestMapping("/purchase/*")
public class PurchaseController {
	@GetMapping(value="purchase_view")
	public void purchase() {
		log.info("매입처리 페이지");
		
	}
	@GetMapping(value="purchase_ledger")
	public void purchase_ledger() {
		log.info("매입원장 페이지");
		
	}
	@GetMapping(value="price_view")
	public void price_view() {
		log.info("단가조회 페이지");
		
	}
	@GetMapping(value="amount_outstanding")
	public void amount_outstanding() {
		log.info("미지급금 페이지");
		
	}
	
}
