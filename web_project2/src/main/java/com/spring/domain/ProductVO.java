package com.spring.domain;

import lombok.Data;

@Data
public class ProductVO {
	private int rn;    //no
	private int pt_cd;  //상품코드
	private String pt_NM; //상품명
	private String unit;  //단위
	private String tax_NM; //면과세 명
	private int tax_cd;    //면과세 코드
	private String origin_CD;  //원산지 코드
	private String origin_NM;  //원산지 명
	private String storage_NM; //보관 명
	private int storage_cd;    // 보관방법
	private int exp_D; 		   // 유통기한
	private int category_fk;   // 카테고리 코드
	private String cate_NM;    //카테고리 명 
	private int emp_fk;		// 결재자
	private String emp_NM;	// 결재자 이름

}
