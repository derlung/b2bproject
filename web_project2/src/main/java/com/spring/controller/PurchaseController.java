package com.spring.controller;

import java.util.List;
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

import com.spring.domain.CreditorVO;
import com.spring.domain.ProductVO;
import com.spring.domain.SearchVO;
import com.spring.service.PriceService;
import com.spring.service.ProductService;
import com.spring.service.PurchaseService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/purchase/*")
public class PurchaseController {
		
	@Autowired
	PriceService service2;
	
	@Autowired
	ProductService service;
	
	@Autowired
	PurchaseService service3;
	
	
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
	
	//상품검색 메소드
	@PostMapping(value="pt_search")
	@ResponseBody
	public List<ProductVO>  pt_search(SearchVO vo) {
		log.info(vo.toString());
		List<ProductVO> list = null;
		try {		
			 list = service3.search_pt(vo);
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return list;
	}
	//구매처검색 메소드
	@PostMapping(value="creditor_search")
	@ResponseBody
	public List<CreditorVO>  creditor_search(SearchVO vo) {
		log.info(vo.toString());
		List<CreditorVO> list = null;
		try {		
			 list = service3.search_creditor(vo);
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return list;
	}
}
