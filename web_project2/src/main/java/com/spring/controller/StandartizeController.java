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

import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
import com.spring.domain.ProductVO;
import com.spring.service.ProductService;
import com.spring.service.PurchaseService;
import com.spring.service.SalesService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/standartize/*")
public class StandartizeController {
	@Autowired
	ProductService service;	
	
	@Autowired
	PurchaseService service3;
	
	@Autowired
	SalesService service2;
	
	@GetMapping(value="product_view")
	public void product_view(@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("상품 페이지 "+cri);
		log.info("category"+cri.getCategory());	
		
		try {
			
			model.addAttribute("list",service.getList(cri));			
			int totalRows=service.totalRows(cri);
			log.info("전체 갯수 "+totalRows);
			model.addAttribute("pageVO", new PageVO(cri, totalRows));
			
			model.addAttribute("cate",service.getCate());
			model.addAttribute("origin",service.getOrigin());

		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	
//	//상품 조건 검색
//	@GetMapping("/search")
//	public void search(String keyword, String category , Model model) throws Exception{
//		log.info("상품 검색 :"+keyword+" "+category);
//		ProductVO vo = new ProductVO();
//		
//		try {			
//			int pt_cd = Integer.parseInt(keyword);
//			vo.setPt_cd(pt_cd);
//			vo.setPt_NM("");
//			int category_fk = Integer.parseInt(category);
//			vo.setCategory_fk(category_fk);
//			if(category==null) {
//				category = "0";
//			}
//			if(keyword==null) {
//				keyword = "";
//			}
//		} catch (Exception e) {
//			vo.setPt_NM(keyword);
//			vo.setPt_cd(0);
//		}
//		
//		try {
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			log.info("카테고리 숫자아닌 경우");
//			return;
//		}				
//	}
	
	
	
	@GetMapping(value="creditor_view")
	public void creditor_view(Model model) {
		log.info("협력사 페이지");
		try {
			model.addAttribute("list_cr",service3.creditorList());
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	@GetMapping(value="customer_view")
	public void customer_view(Model model) {
		log.info("고객사 페이지");
		try {
			model.addAttribute("list_c",service2.customerList());			
		} catch (Exception e) {
			e.printStackTrace();
		}			
	}
	
	
	@PostMapping(value="add_product")
	public String add_product(ProductVO vo,RedirectAttributes rttr) {		
		log.info("상품 삽입"+vo);
		boolean result;
		try {
			result = service.insert_pt(vo);			
		} catch (Exception e) {			
			e.printStackTrace();
		}			
		rttr.addAttribute("category", vo.getCategory_fk());
		rttr.addAttribute("type", "C");
		
		return "redirect:product_view";
	}
	
	@PostMapping(value="update_product")
//	@ResponseBody
	public String update_product(ProductVO vo,RedirectAttributes rttr) {		
		log.info("상품 변경"+vo);
		boolean result;
		//boolean result=false;
		try {		
			result =service.update_pt(vo); 
		} catch (Exception e) {
			e.printStackTrace();			
		}		
		rttr.addAttribute("category", vo.getCategory_fk());
		rttr.addAttribute("type", "C");
		
		return "redirect:product_view";
	}
}
