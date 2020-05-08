package com.spring.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.ProductVO;
import com.spring.domain.SearchVO;
import com.spring.service.PriceService;
import com.spring.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/purchase/*")
public class PurchaseController {
		
	@Autowired
	PriceService service2;
	
	@Autowired
	ProductService service;
	
	
	@GetMapping(value="purchase_view")
	public void purchase() {
		log.info("매입처리 페이지");
		
	}
	
	
	@GetMapping(value="purchase_ledger")
	public void purchase_ledger() {
		log.info("매입원장 페이지");
		
	}
	
	
	@GetMapping(value="price_view")
	public void price_view(Model model) {
		log.info("단가조회 페이지");
		try {
			model.addAttribute("list",service2.priceList());
			model.addAttribute("cate",service.getCate());
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	
	@GetMapping(value="amount_outstanding")
	public void amount_outstanding() {
		log.info("미지급금 페이지");
		
	}
	
	//단가등록 메소드
	@PostMapping(value="pt_search")
	@ResponseBody
	public boolean  pt_search(SearchVO vo,RedirectAttributes rttr) {
		System.out.println(vo);
		boolean result=false;
		try {		
			
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return result;
	}
	
}
