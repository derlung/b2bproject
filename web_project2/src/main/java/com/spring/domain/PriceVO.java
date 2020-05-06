package com.spring.domain;

import lombok.Data;

@Data
public class PriceVO {
	
	private int center_FK; //센터
	private int pt_FK; //상품코드
	private String pt_NM; //상품이름
	private String unit;  //단위
	private String origin_FK; //원산지
	private String storage_NM; //보관방법
	private int storage_FK;    //
	private String tax_NM;     // 면과세
	private int purchase_cost; //매입단가
	private long creditor_FK;	// 구매처 코드
	private String creditor_NM;  //카테고리  
	private String cate_NM;		// 카테고리 명
	
	
	
}
