package com.spring.service;

import java.util.List;

import com.spring.domain.CateVO;
import com.spring.domain.CreditorVO;
import com.spring.domain.ProductVO;
import com.spring.domain.SearchVO;

public interface PurchaseService {
	public List<ProductVO> search_pt(SearchVO vo);
	public List<CreditorVO> search_creditor(SearchVO vo);
	public List<CateVO> search_center(SearchVO vo);
}
