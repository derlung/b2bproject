package com.spring.service;

import java.util.List;

import com.spring.domain.CateVO;
import com.spring.domain.Criteria;
import com.spring.domain.OriginVO;
import com.spring.domain.ProductVO;

public interface ProductService {
	public List<ProductVO> getList(Criteria cri) throws Exception;
	public List<CateVO> getCate() throws Exception;
	public List<OriginVO> getOrigin() throws Exception;
	public boolean update_pt(ProductVO vo)throws Exception;
	public boolean insert_pt(ProductVO vo)throws Exception;	
	public int totalRows(Criteria cri) throws Exception;	
 
}
