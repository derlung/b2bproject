package com.spring.controller;


import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@RequestMapping(value = "/main", method = RequestMethod.POST)
	public String main(PwVO vo,String tab) {
		log.info("메인 페이지");

		
		return "view/main";
	}
	@RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
	public String forgotpw(Locale locale, Model model) {
		log.info("비밀번호찾기 페이지");
		
		return "view/forgot-password";
	}
	
	
	@RequestMapping(value = "/mailSender") 
	@PostMapping
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
						" <div" + 
						"      style=\" " + 
						"        width: 600px; " + 
						"        height: 550px; " + 
						"        border: 1px solid #cacaca; " + 
						"        margin: 0 auto; " + 
						"      \" " + 
						"    > " + 
						"      <div " + 
						"        style=\" " + 
						"          width: calc(100%-3px); " + 
						"          background-color: #007bb5; " + 
						"          color: white; " + 
						"          padding: 5px; " + 
						"          font-size: 20px; " + 
						"          font-weight: bold; " + 
						"        \" " + 
						"      ></div> " + 
						"      <div " + 
						"        style=\" " + 
						"          color: #007bb5; " + 
						"          font-family: Yj TEUNTEUN; " + 
						"          font-size: 50px; " + 
						"          text-align: center; " + 
						"        \" " + 
						"      > " + 
						"        <p>(주)삼정물산</p> " + 
						"    " + 
						"      </div> " + 
						"      <div style=\"padding: 50px;\"> " + 
						"        <div style=\"font-size: 15px; font-weight: bold;\"> " + 
						"          비밀번호를 변경해주세요.<br /><br /> " + 
						"        </div> " + 
						"        <div style=\"font-size: 14px;\"> " + 
						"          본 메일은 비밀번호 변경을 위해 발송되는 메일입니다. 본인이 요청한 변경 " + 
						"          사항이 아니라면 개인정보 보호를 위해 비밀번호를 재변경해주세요 " + 
						"          <br> " + 
						"            비밀번호를 다시 설정하려면 '비밀번호 변경' 버튼을 클릭해주세요. " + 
						"          </div> " + 
						"          <br> " + 
						"          <hr> " + 
						"        </div>      " + 
						"      <div style=\"text-align: center;\"> " + 
						"              <a   href='http://localhost:8080/reset-password?u="+u+
						"&key=" + key+"' target='_blenk'" + 
						"                style=\"                                     " + 
						"                  background-color: #007bb5; " + 
						"                  border-radius: 5px;                   " + 	
						"                  cursor: pointer; " + 
						"                  color: #ffffff; " + 
						"                  font-family: Arial; " + 
						"                  font-size: 20px; " + 
						"                  padding: 12px 37px; " + 
						"                  text-decoration: none; " + 
						"                  padding: 20px 45px;\"                 " + 
						"                                " + 
						"                >비밀번호 변경</a> " + 
						"            </div> " + 
						"            <br> " + 
						"            <br> " + 
						"            <br> " + 
						"    " + 
						"             " + 
						"                <div style=\"text-align: center; font-size: 13px; color: #9c9c9c;\"> " + 
						"                  본 메일은 발신 전용으로 회신이 불가합니다. 문의사항은 담당자에게 연락 바랍니다.<br> " + 
						"                  Copyright © 2020 Distruition All rights reserved. " + 
						"                </div> " + 
						" " + 
						"      </div> " + 
						"    </div> " 	);
				
		
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
	
	@RequestMapping(value = "/reset_pw", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> reset_pw( PwVO vo) {
		log.info("비밀번호 변경");
		passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		Map<String,String> map = new HashMap<String, String>();
		vo.setPw(passwordEncoder.encode(vo.getPw()));
		//키값과 id 일치하는지 확인
		try {
			String id = service_pw.check_id(vo);
			if(id!=null) {
				if(id.equals(vo.getId())) {
					
					if(service_pw.reset_pw(vo)) {
						//update 성공시 키값 행 삭제
						map.put("result","success");
						if(service_pw.delete_row(vo.getKey())) {
							//삭제 성공
							map.put("msg","비밀번호를 성공적으로 변경하였습니다");
							return map;
						}
					}else {
						//update 실패했을때 (해당 사용자가 존재하지 않을때?)
						map.put("msg","존재하지 않는 사용자입니다. 관리자에게 문의해주세요");
					}
				}else {
					//아이디가 해당 키값에 해당하는 행의 아이디와 다를때
					map.put("msg","변경하려는 아이디가 다릅니다. 다시 입력해주세요");
				}
			}else {
				//키값에 해당하는 행이 없을 때
				map.put("msg","잘못된 키값입니다. 다시 시도해주세요");
			}
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		map.put("result","fail");
		return map;
	}
}