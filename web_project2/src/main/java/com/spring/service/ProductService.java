package com.spring.service;

import java.util.List;

import com.spring.domain.ProductVO;

public interface ProductService {
	public List<ProductVO> getList() throws Exception;
	public List<String> getCate() throws Exception;
	public int update_pt(ProductVO vo)throws Exception;
}
