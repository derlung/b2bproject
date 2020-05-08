package com.spring.mapper;

import java.util.List;

import com.spring.domain.CreditorVO;
import com.spring.domain.ProductVO;
import com.spring.domain.SearchVO;

public interface PurchaseMapper {

	public List<ProductVO>search_pt(SearchVO vo);
	public List<CreditorVO>search_creditor(SearchVO vo);
}
