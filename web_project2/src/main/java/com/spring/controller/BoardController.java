package com.spring.controller;				
				
import java.util.Locale;				
				
import org.springframework.beans.factory.annotation.Autowired;				
import org.springframework.stereotype.Controller;				
import org.springframework.ui.Model;				
import org.springframework.web.bind.annotation.GetMapping;				
import org.springframework.web.bind.annotation.ModelAttribute;				
import org.springframework.web.bind.annotation.RequestMapping;				
import org.springframework.web.bind.annotation.RequestMethod;				
import org.springframework.web.bind.annotation.RequestParam;				
				
import com.spring.domain.BoardVO;				
import com.spring.service.BoardService;				
				
import lombok.extern.slf4j.Slf4j;				
				
@Controller				
@Slf4j				
@RequestMapping("/main_view/*")				
public class BoardController {				
				
	@Autowired			
	public BoardService service;			
				
	@GetMapping(value="board_market_view")			
	public void board_maket_view(@RequestParam("bno") int bno, Model model) {			
		log.info("알뜰시장 read");		
		try {		
			BoardVO vo = service.board_market_read(bno);	
			System.out.println(vo);	
			model.addAttribute("board_market_read", vo);	
				
				
		} catch (Exception e) {		
			e.printStackTrace();	
		}		
	}			
				
				
				
	@GetMapping(value="board_market")			
	public void board_maket(Model model) {			
		log.info("알뜰시장 list");		
				
		model.addAttribute("board_Market_List", service.board_Market_List());		
				
	}			
				
				
				
				
	@GetMapping(value="board_notice_view")			
	public void board_notice_view(@RequestParam("bno") int bno, Model model) {			
		log.info("공지사항 read");		
		try {		
			BoardVO vo = service.board_Notice_read(bno);	
			System.out.println(vo);	
			model.addAttribute("board_Notice_read", vo);	
				
				
		} catch (Exception e) {		
			e.printStackTrace();	
		}		
	}			
				
				
				
	@GetMapping(value="board_notice")			
	public void board_notice(Model model) {			
		log.info("공지사항 list");		
				
		model.addAttribute("board_Notice_List", service.board_Notice_List());		
				
	}			
				
}				
				
				
				
				
