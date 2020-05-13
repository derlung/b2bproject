package com.spring.controller;


import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.spring.service.BoardService;
import com.spring.domain.PwVO;
import com.spring.mail.MailHandler;
import com.spring.mail.TempKey;
import com.spring.service.MainViewService;
import com.spring.service.PwService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	public MainViewService service;
	
	@Autowired
	public BoardService service2;
	
	private PwService service_pw;
	
	private PasswordEncoder passwordEncoder;
	
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
			model.addAttribute("getBoard_Market", service2.getBoard_Market());
			model.addAttribute("getBoard_Notice", service2.getBoard_Notice());
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
	
	@RequestMapping(value = "/reset-password", method = RequestMethod.GET)
	public String resetpw(@RequestParam("key") String key,Model model) {
		log.info("비밀번호변경 페이지");
		//24시 확인
		
		try {
			String time =service_pw.get_time(key);
			log.info("시간"+time);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new Date();
			if(time!=null) {
			Date time_2 = sdf.parse(time);
			log.info(date.toString());
			int t = 60*24;
			if((date.getTime()-time_2.getTime())/60000<=60*24) {
				model.addAttribute("timeover","false");
				log.info("false");
			}else {
				
				model.addAttribute("timeover","true");
				
				log.info("true");
			}
			}else {
				model.addAttribute("timeover","true");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "view/reset-password";
	
	}
	
	@RequestMapping(value = "/mailSender") 
	public String mailSender(@RequestParam("email") String email,@RequestParam("u") String u) throws AddressException, MessagingException, UnsupportedEncodingException {
		
		String key = new TempKey().getKey(50, false);
		//이메일 인증 DB 추가
		PwVO vo = new PwVO();
		vo.setEmail(email);
		vo.setKey(key);
		vo.setGroup_GB(u);
		try {
			if(service_pw.add_pw(vo)) {
				MailHandler sendMail = new MailHandler(mailSender);
				sendMail.setSubject("[비밀번호 변경 이메일 인증]"); // 메일제목
				sendMail.setText( // 메일내용
						"<div>"
						+ "<h1>메일인증</h1>" +
						"<a href='http://localhost:8080/reset-password?u=" +u+
						"&key=" + key+
						"' target='_blenk'>이메일 인증 확인</a></div>");
				sendMail.setFrom("demian1722@naver.com", "관리자"); // 보낸이
				sendMail.setTo(email); // 받는이
				sendMail.send();
			}else {
				//실패시
				return "view/forgot-password";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "view/login";
	}
	
	@RequestMapping(value = "/reset_pw", method = RequestMethod.POST)
	public String reset_pw(PwVO vo, Model model) {
		log.info("비밀번호 변경");
		passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		vo.setPw(passwordEncoder.encode(vo.getPw()));
		//키값과 id 일치하는지 확인
		try {
			String id = service_pw.check_id(vo);
			if(id!=null) {
				if(id.equals(vo.getId())) {
					
					if(service_pw.reset_pw(vo)) {
						//update 성공시 키값 행 삭제
						model.addAttribute("result","success");
						if(service_pw.delete_row(vo.getKey())) {
							//삭제 성공
							return "redirect:/reset_pw";
						}
					}else {
						//update 실패했을때 (해당 사용자가 존재하지 않을때?)
						model.addAttribute("msg","존재하지 않는 사용자입니다. 관리자에게 문의해주세요");
					}
				}else {
					//아이디가 해당 키값에 해당하는 행의 아이디와 다를때
					model.addAttribute("msg","변경하려는 아이디가 다릅니다. 다시 입력해주세요");
				}
			}else {
				//키값에 해당하는 행이 없을 때
				model.addAttribute("msg","잘못된 키값입니다. 다시 시도해주세요");
			}
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		model.addAttribute("result","fail");
		return "redirect:/reset_pw";
	}
}
