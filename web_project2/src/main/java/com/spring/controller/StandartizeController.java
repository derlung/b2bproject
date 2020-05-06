package com.spring.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.ProductVO;
import com.spring.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/standartize/*")
public class StandartizeController {
	@Autowired
	ProductService service;
	
	@GetMapping(value="product_view")
	public void product_view(Model model) {
		log.info("상품 페이지");
		try {
			model.addAttribute("list",service.getList());
			model.addAttribute("cate",service.getCate());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@GetMapping(value="creditor_view")
	public void creditor_view() {
		log.info("협력사 페이지");
		
	}
	
	@GetMapping(value="customer_view")
	public void customer_view() {
		log.info("고객사 페이지");
		
	}
	
	@PostMapping(value="add_product")
	public String  add_product(ProductVO vo,RedirectAttributes rttr) {
		System.out.println(vo);
		return "redirect:product_view";
	}
}
