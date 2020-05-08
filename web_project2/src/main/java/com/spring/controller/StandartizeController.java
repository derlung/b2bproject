package com.spring.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.ProductVO;
import com.spring.service.ProductService;
import com.spring.service.SalesService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/standartize/*")
public class StandartizeController {
	@Autowired
	ProductService service;
	
	@Autowired
	SalesService service3;
	
	@GetMapping(value="product_view")
	public void product_view(Model model) {
		log.info("상품 페이지");
		try {
			model.addAttribute("list",service.getList());
			model.addAttribute("cate",service.getCate());
			model.addAttribute("origin",service.getOrigin());
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	
	//상품 조건 검색
//	@GetMapping("/{pt_cd},{pt_NM}")
//	public ResponseEntity<ProductVO> get(@PathVariable("pt_cd") int pt_cd, @PathVariable("pt_NM")String pt_NM) throws Exception{
//		log.info("상품 검색"+pt_cd,pt_NM);
//		return new ResponseEntity<>(ProductService.productSearch(pt_cd,pt_NM),HttpStatus.OK);			
//	}
	
	
	
	@GetMapping(value="creditor_view")
	public void creditor_view() {
		log.info("협력사 페이지");
		
	}
	
	@GetMapping(value="customer_view")
	public void customer_view(Model model) {
		log.info("고객사 페이지");
		try {
			model.addAttribute("list_c",service3.customerList());			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}
	
	@PostMapping(value="add_product")
	public ResponseEntity<Boolean> add_product(ProductVO vo,Model model) {		
		log.info("상품 삽입"+vo);	
		Boolean result=null;
		try {
			result=service.insert_pt(vo);
			log.info("삽입결과 : "+result);
			model.addAttribute("list",service.getList());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Boolean>(result,HttpStatus.OK);		
	}
	
	@PostMapping(value="update_product")
	@ResponseBody
	public boolean  update_product(ProductVO vo,RedirectAttributes rttr) {
		System.out.println(vo);
		log.info("상품 변경");
		boolean result=false;
		try {		
			result =service.update_pt(vo); 
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return result;
	}
}
