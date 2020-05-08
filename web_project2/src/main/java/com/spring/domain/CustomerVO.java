package com.spring.domain;

import lombok.Data;

@Data
public class CustomerVO {
	//private int rn;    //no
	private long customer_cd; //고객코드
	private String pre_NM; //고객명
	private long customer_rcd; //사업자번호
	private String customer_NM; //사업자명
	private String address; //주소
	private int center_FK; //센터코드
	private String emp_NM; //담당자명
	private String password;//비밀번호
}
