package com.spring.domain;

import lombok.Data;

@Data
public class SalesVO {
	private int center_FK; //센터
	private int pt_FK; //상품코드
	private String pt_NM; //상품이름
	private String unit;  //단위
	private String origin_NM; //원산지
	private String storage_NM; //보관방법
	private String tax_NM;     // 면과세
	private int supply_price; // 공급가
	private int vat;	//부가세
	private int cost;	//합계
	private int exp_D; 	// 마감일
	private int exp_T;	// 마감시간
	
}
