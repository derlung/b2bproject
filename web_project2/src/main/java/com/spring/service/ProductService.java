package com.spring.service;

import java.util.List;

import com.spring.domain.CateVO;
import com.spring.domain.ProductVO;

public interface ProductService {
	public List<ProductVO> getList() throws Exception;
	public List<CateVO> getCate() throws Exception;
	public boolean update_pt(ProductVO vo)throws Exception;
}
