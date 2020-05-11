package com.spring.domain;

import lombok.Data;

@Data
public class CreditorVO {	
	private int rn;
	private long creditor_cd; //협력업체 코드
	private String creditor_NM; //협력업체명
	private String pre_NM;//대표자명
	private String contact;//연락처
	private String address;//주소
	private String account_no;//입금계좌
	private String depositor_NM;//입금자명
	private String emp_NM; //담당자이름	
	private String business;//업태
	private String issues;//종목
	private String email;//이메일
	private String password;//비밀번호
}
