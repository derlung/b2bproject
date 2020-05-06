package com.spring.domain;

import lombok.Data;

@Data
public class ProductVO {
	private int rn;
	private int pt_cd;
	private String pt_NM;
	private String unit;
	private String tax_NM;
	private String origin_NM;
	private String storage_NM;
	private int exp_D;
	private int category_fk;
	private String cate_NM;
	private int emp_fk;
	private String emp_NM;

}
